.class Lcom/mediatek/gemini/SimCheckboxEntrance$1;
.super Landroid/content/BroadcastReceiver;
.source "SimCheckboxEntrance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/SimCheckboxEntrance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/SimCheckboxEntrance;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/SimCheckboxEntrance;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/mediatek/gemini/SimCheckboxEntrance$1;->this$0:Lcom/mediatek/gemini/SimCheckboxEntrance;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, -0x1

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 43
    const-string v6, "slotId"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 45
    .local v4, slotId:I
    const-string v6, "state"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 47
    .local v2, simStatus:I
    const-string v6, "SimCheckboxEntrance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "receive notification: state of sim slot "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    if-ltz v4, :cond_0

    if-ltz v2, :cond_0

    .line 50
    iget-object v6, p0, Lcom/mediatek/gemini/SimCheckboxEntrance$1;->this$0:Lcom/mediatek/gemini/SimCheckboxEntrance;

    #calls: Lcom/mediatek/gemini/SimCheckboxEntrance;->updateSimState(II)V
    invoke-static {v6, v4, v2}, Lcom/mediatek/gemini/SimCheckboxEntrance;->access$000(Lcom/mediatek/gemini/SimCheckboxEntrance;II)V

    .line 74
    .end local v2           #simStatus:I
    .end local v4           #slotId:I
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const-string v6, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 53
    const-string v6, "SimCheckboxEntrance"

    const-string v7, "receiver: TelephonyIntents.ACTION_SIM_INFO_UPDATE"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v6, p0, Lcom/mediatek/gemini/SimCheckboxEntrance$1;->this$0:Lcom/mediatek/gemini/SimCheckboxEntrance;

    invoke-virtual {v6}, Lcom/mediatek/gemini/SimCheckboxEntrance;->addSimInfoPreference()V

    goto :goto_0

    .line 56
    :cond_2
    const-string v6, "android.intent.action.SIM_NAME_UPDATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 57
    const-string v6, "SimCheckboxEntrance"

    const-string v7, "receiver: TelephonyIntents.ACTION_SIM_NAME_UPDATE"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v6, "simId"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 59
    .local v5, slotid:I
    if-ltz v5, :cond_0

    .line 62
    invoke-static {p1, v5}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v3

    .line 63
    .local v3, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v3, :cond_0

    .line 64
    iget-object v6, p0, Lcom/mediatek/gemini/SimCheckboxEntrance$1;->this$0:Lcom/mediatek/gemini/SimCheckboxEntrance;

    iget-wide v7, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gemini/SimInfoPreference;

    .line 66
    .local v1, pref:Lcom/mediatek/gemini/SimInfoPreference;
    if-eqz v1, :cond_0

    .line 69
    iget-object v6, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/mediatek/gemini/SimInfoPreference;->setName(Ljava/lang/String;)V

    goto :goto_0
.end method
