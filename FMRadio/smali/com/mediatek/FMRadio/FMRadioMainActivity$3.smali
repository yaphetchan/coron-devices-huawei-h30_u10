.class Lcom/mediatek/FMRadio/FMRadioMainActivity$3;
.super Ljava/lang/Object;
.source "FMRadioMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioMainActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 184
    const-string v0, "FMRadioMainActivity"

    const-string v1, "mHeadsetButton : OnClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioMainActivity$3;->this$0:Lcom/mediatek/FMRadio/FMRadioMainActivity;

    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getSpeakerUsed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/mediatek/FMRadio/FMRadioMainActivity;->setSpeakerPhoneOn(Z)V
    invoke-static {v1, v0}, Lcom/mediatek/FMRadio/FMRadioMainActivity;->access$200(Lcom/mediatek/FMRadio/FMRadioMainActivity;Z)V

    .line 186
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
