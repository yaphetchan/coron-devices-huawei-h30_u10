.class Lcom/android/server/ConnectivityService$DefaultDataSimObserver;
.super Landroid/database/ContentObserver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultDataSimObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mWhat:I


# direct methods
.method constructor <init>(Landroid/os/Handler;I)V
    .locals 0
    .parameter "handler"
    .parameter "what"

    .prologue
    .line 3850
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3851
    iput-object p1, p0, Lcom/android/server/ConnectivityService$DefaultDataSimObserver;->mHandler:Landroid/os/Handler;

    .line 3852
    iput p2, p0, Lcom/android/server/ConnectivityService$DefaultDataSimObserver;->mWhat:I

    .line 3853
    return-void
.end method


# virtual methods
.method observe(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 3856
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3857
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "gprs_connection_sim_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3859
    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 3863
    const-string v0, "DefaultDataSimObserver onChange"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$invoke-log-e2420b(Ljava/lang/String;)V

    .line 3864
    iget-object v0, p0, Lcom/android/server/ConnectivityService$DefaultDataSimObserver;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/ConnectivityService$DefaultDataSimObserver;->mWhat:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3865
    return-void
.end method
