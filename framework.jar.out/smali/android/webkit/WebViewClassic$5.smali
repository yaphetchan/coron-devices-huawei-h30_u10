.class Landroid/webkit/WebViewClassic$5;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewClassic;->onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;

.field final synthetic val$resumeMsg:Landroid/os/Message;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2458
    iput-object p1, p0, Landroid/webkit/WebViewClassic$5;->this$0:Landroid/webkit/WebViewClassic;

    iput-object p2, p0, Landroid/webkit/WebViewClassic$5;->val$resumeMsg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 2461
    iget-object v0, p0, Landroid/webkit/WebViewClassic$5;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mResumeMsg:Landroid/os/Message;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$3100(Landroid/webkit/WebViewClassic;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2462
    iget-object v0, p0, Landroid/webkit/WebViewClassic$5;->val$resumeMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2463
    iget-object v0, p0, Landroid/webkit/WebViewClassic$5;->this$0:Landroid/webkit/WebViewClassic;

    #setter for: Landroid/webkit/WebViewClassic;->mResumeMsg:Landroid/os/Message;
    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic;->access$3102(Landroid/webkit/WebViewClassic;Landroid/os/Message;)Landroid/os/Message;

    .line 2465
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic$5;->this$0:Landroid/webkit/WebViewClassic;

    #setter for: Landroid/webkit/WebViewClassic;->mSavePasswordDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic;->access$3202(Landroid/webkit/WebViewClassic;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2466
    return-void
.end method
