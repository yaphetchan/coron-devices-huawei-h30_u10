.class Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityServiceReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;-><init>(Lcom/android/server/ConnectivityService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .local v1, action:Ljava/lang/String;
    const-string v10, "ConnectivityService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "received intent ==> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mSynchronizedObject:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$iget-mSynchronizedObject-a299b6(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    :try_start_0
    const-string v10, "android.intent.action.DATA_DEFAULT_SIM"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$iget-mContext-0729bd(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "gprs_connection_setting"

    const/4 v13, -0x4

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    add-int/lit8 v5, v10, -0x1

    .local v5, preSlotId:I
    const-string v10, "simid"

    const-wide/16 v12, -0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .local v7, simId:Ljava/lang/Long;
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-eqz v10, :cond_1

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, -0x5

    cmp-long v10, v12, v14

    if-nez v10, :cond_4

    :cond_1
    const/4 v8, -0x1

    .local v8, slotId:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$iget-mContext-0729bd(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "gprs_connection_setting"

    add-int/lit8 v13, v8, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mRestoreLastSlotConn:Z
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$iget-mRestoreLastSlotConn-805147(Lcom/android/server/ConnectivityService;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, -0x1

    if-le v8, v10, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$iget-mContext-0729bd(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "gprs_connection_last_setting"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$iget-mContext-0729bd(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v8}, Landroid/provider/Telephony$SIMInfo;->getIdBySlot(Landroid/content/Context;I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .local v2, changeSimId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$iget-mContext-0729bd(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "gprs_connection_sim_setting"

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v10, v12, v13, v14}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const/4 v10, -0x1

    if-eq v8, v10, :cond_5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$iget-mContext-0729bd(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "mobile_data"

    const/4 v13, 0x1

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0
    iget-object v9, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v9, v2}, Lcom/android/server/ConnectivityService$BaiduInjector;->setPreferSimSetting(Lcom/android/server/ConnectivityService;Ljava/lang/Long;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleMobileDataConnectionChange(II)V
    invoke-static {v10, v5, v8}, Lcom/android/server/ConnectivityService;->access$invoke-handleMobileDataConnectionChange-46ebb5(Lcom/android/server/ConnectivityService;II)V

    .end local v2           #changeSimId:Ljava/lang/Long;
    .end local v5           #preSlotId:I
    .end local v7           #simId:Ljava/lang/Long;
    .end local v8           #slotId:I
    :cond_3
    :goto_3
    monitor-exit v11

    goto/16 :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .restart local v5       #preSlotId:I
    .restart local v7       #simId:Ljava/lang/Long;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$iget-mContext-0729bd(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v10, v12, v13}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v8

    .restart local v8       #slotId:I
    goto/16 :goto_1

    .restart local v2       #changeSimId:Ljava/lang/Long;
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$iget-mContext-0729bd(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "mobile_data"

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .end local v2           #changeSimId:Ljava/lang/Long;
    .end local v5           #preSlotId:I
    .end local v7           #simId:Ljava/lang/Long;
    .end local v8           #slotId:I
    :cond_6
    const-string v10, "android.intent.action.TETHERING_CHANGED"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "tethering_isconnected"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .local v3, isConnected:Z
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v10, v3}, Lcom/android/server/ConnectivityService;->setUsbTethering(Z)I

    goto :goto_3

    .end local v3           #isConnected:Z
    :cond_7
    const-string v10, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .local v4, obtainBundle:Landroid/os/Bundle;
    if-eqz v4, :cond_9

    invoke-static {v4}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v6

    .local v6, serviceState:Landroid/telephony/ServiceState;
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    if-nez v10, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v10}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v10

    if-nez v10, :cond_8

    const/4 v10, 0x1

    :goto_4
    const/4 v13, 0x0

    #calls: Lcom/android/server/ConnectivityService;->setDataOffNotification(ZZ)V
    invoke-static {v12, v10, v13}, Lcom/android/server/ConnectivityService;->access$invoke-setDataOffNotification-6fa32e(Lcom/android/server/ConnectivityService;ZZ)V

    goto :goto_3

    :cond_8
    const/4 v10, 0x0

    goto :goto_4

    .end local v6           #serviceState:Landroid/telephony/ServiceState;
    :cond_9
    const-string v10, "get bundle error!!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$invoke-log-e2420b(Ljava/lang/String;)V

    goto :goto_3

    .end local v4           #obtainBundle:Landroid/os/Bundle;
    :cond_a
    const-string v10, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v10}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v10

    if-nez v10, :cond_b

    const/4 v10, 0x1

    :goto_5
    const/4 v13, 0x1

    #calls: Lcom/android/server/ConnectivityService;->setDataOffNotification(ZZ)V
    invoke-static {v12, v10, v13}, Lcom/android/server/ConnectivityService;->access$invoke-setDataOffNotification-6fa32e(Lcom/android/server/ConnectivityService;ZZ)V

    goto/16 :goto_3

    :cond_b
    const/4 v10, 0x0

    goto :goto_5

    :cond_c
    const-string v10, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, "android.intent.action.SIM_INSERTED_STATUS"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->getValidSimNum()I
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$invoke-getValidSimNum-14b8f6(Lcom/android/server/ConnectivityService;)I

    move-result v9

    .local v9, validSimNum:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sim info changed, validSimNum="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$invoke-log-e2420b(Ljava/lang/String;)V

    if-nez v9, :cond_e

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$iget-mContext-0729bd(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "mobile_data"

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_e
    if-lez v9, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleMobileDataUpdate()V
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$invoke-handleMobileDataUpdate-45cf1e(Lcom/android/server/ConnectivityService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3
.end method
