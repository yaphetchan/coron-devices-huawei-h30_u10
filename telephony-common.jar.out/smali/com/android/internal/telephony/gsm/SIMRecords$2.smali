.class Lcom/android/internal/telephony/gsm/SIMRecords$2;
.super Landroid/os/Handler;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SIMRecords;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/SIMRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 3723
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$2;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    .line 3731
    const/4 v7, 0x0

    .line 3733
    .local v7, isRecordLoadResponse:Z
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords$2;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$2200(Lcom/android/internal/telephony/gsm/SIMRecords;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3734
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords$2;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received message "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " while being destroyed. Ignoring."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gsm/SIMRecords;->loge(Ljava/lang/String;)V

    .line 3783
    :cond_0
    :goto_0
    return-void

    .line 3739
    :cond_1
    :try_start_0
    iget v8, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v8, :pswitch_data_0

    .line 3779
    :cond_2
    :goto_1
    if-eqz v7, :cond_0

    .line 3780
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords$2;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    goto :goto_0

    .line 3741
    :pswitch_0
    const/4 v7, 0x1

    .line 3742
    :try_start_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 3743
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_2

    .line 3747
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords$2;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    check-cast v8, [B

    iput-object v8, v9, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfGid1:[B

    .line 3749
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords$2;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mEfGid1: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SIMRecords$2;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v10, v10, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfGid1:[B

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3774
    .end local v1           #ar:Landroid/os/AsyncResult;
    :catch_0
    move-exception v4

    .line 3776
    .local v4, exc:Ljava/lang/RuntimeException;
    :try_start_2
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords$2;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    const-string v9, "Exception parsing SIM record"

    invoke-virtual {v8, v9, v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3779
    if-eqz v7, :cond_0

    .line 3780
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords$2;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    goto :goto_0

    .line 3752
    .end local v4           #exc:Ljava/lang/RuntimeException;
    :pswitch_1
    const/4 v7, 0x1

    .line 3753
    :try_start_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 3754
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_2

    .line 3757
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 3758
    .local v2, bundle:Landroid/os/Bundle;
    const-string v8, "match_path"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3759
    .local v6, filePath:Ljava/lang/String;
    const-string v8, "match_file"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3760
    .local v5, fileId:Ljava/lang/String;
    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [B

    move-object v0, v8

    check-cast v0, [B

    move-object v3, v0

    .line 3763
    .local v3, bytes:[B
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords$2;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1000(Lcom/android/internal/telephony/gsm/SIMRecords;)I

    move-result v8

    invoke-static {v6, v5, v3, v8}, Lcom/android/internal/telephony/VirtualNet;->addSpecialFile(Ljava/lang/String;Ljava/lang/String;[BI)V

    .line 3769
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SIMRecords$2;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "load Specifile: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SIMRecords$2;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v10, v10, Lcom/android/internal/telephony/gsm/SIMRecords;->mEfGid1:[B

    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 3779
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v3           #bytes:[B
    .end local v5           #fileId:Ljava/lang/String;
    .end local v6           #filePath:Ljava/lang/String;
    :catchall_0
    move-exception v8

    if-eqz v7, :cond_3

    .line 3780
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SIMRecords$2;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SIMRecords;->onRecordLoaded()V

    :cond_3
    throw v8

    .line 3739
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
