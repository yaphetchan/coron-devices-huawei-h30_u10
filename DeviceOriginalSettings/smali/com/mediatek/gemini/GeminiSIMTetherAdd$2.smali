.class Lcom/mediatek/gemini/GeminiSIMTetherAdd$2;
.super Landroid/content/BroadcastReceiver;
.source "GeminiSIMTetherAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/GeminiSIMTetherAdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$2;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    const-string v2, "GeminiSIMTetherAdd"

    const-string v3, "receive ACTION_SIM_INFO_UPDATE"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$2;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 98
    .local v1, simList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    if-eqz v1, :cond_0

    .line 99
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 101
    const-string v2, "GeminiSIMTetherAdd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hot swap_simList.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$2;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    #calls: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->goBackSettings()V
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$500(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)V

    .line 110
    .end local v1           #simList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    :cond_0
    :goto_0
    return-void

    .line 103
    .restart local v1       #simList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 104
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-wide v2, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    iget-object v4, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$2;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    #getter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->mSimId:J
    invoke-static {v4}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$600(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$2;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
