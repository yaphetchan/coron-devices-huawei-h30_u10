.class Lcom/android/server/ConnectivityService$FeatureUser;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeatureUser"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mCreateTime:J

.field mFeature:Ljava/lang/String;

.field mNetworkType:I

.field mPid:I

.field mRadioNum:I

.field mUid:I

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .parameter
    .parameter "type"
    .parameter "feature"
    .parameter "binder"

    .prologue
    .line 1287
    iput-object p1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->this$0:Lcom/android/server/ConnectivityService;

    .line 1288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1267
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mRadioNum:I

    .line 1289
    iput p2, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    .line 1290
    iput-object p3, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    .line 1291
    iput-object p4, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mBinder:Landroid/os/IBinder;

    .line 1292
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    .line 1293
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    .line 1294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mCreateTime:J

    .line 1297
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1301
    :goto_0
    return-void

    .line 1298
    :catch_0
    move-exception v0

    .line 1299
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$FeatureUser;->binderDied()V

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/server/ConnectivityService;ILjava/lang/String;Landroid/os/IBinder;I)V
    .locals 3
    .parameter
    .parameter "type"
    .parameter "feature"
    .parameter "binder"
    .parameter "radioNum"

    .prologue
    .line 1269
    iput-object p1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->this$0:Lcom/android/server/ConnectivityService;

    .line 1270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1267
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mRadioNum:I

    .line 1271
    iput p2, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    .line 1272
    iput-object p3, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    .line 1273
    iput-object p4, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mBinder:Landroid/os/IBinder;

    .line 1274
    iput p5, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mRadioNum:I

    .line 1275
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    .line 1276
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    .line 1277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mCreateTime:J

    .line 1280
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1284
    :goto_0
    return-void

    .line 1281
    :catch_0
    move-exception v0

    .line 1282
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$FeatureUser;->binderDied()V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectivityService FeatureUser binderDied("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mCreateTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSec ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$invoke-log-e2420b(Ljava/lang/String;)V

    .line 1313
    iget v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mRadioNum:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->stopUsingNetworkFeatureGemini(Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    invoke-static {v0, p0, v5}, Lcom/android/server/ConnectivityService;->access$invoke-stopUsingNetworkFeatureGemini-aeaf6d(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    .line 1323
    :goto_0
    return-void

    .line 1317
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    invoke-static {v0, p0, v5}, Lcom/android/server/ConnectivityService;->access$invoke-stopUsingNetworkFeature-4e38e2(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    goto :goto_0
.end method

.method public expire()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectivityService FeatureUser expire("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mCreateTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSec ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$invoke-log-e2420b(Ljava/lang/String;)V

    .line 1332
    const-string v0, "enableMMS"

    iget-object v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1334
    iget v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mRadioNum:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1335
    iget-object v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->stopUsingNetworkFeatureGemini(Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    invoke-static {v0, p0, v5}, Lcom/android/server/ConnectivityService;->access$invoke-stopUsingNetworkFeatureGemini-aeaf6d(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    .line 1342
    :cond_0
    :goto_0
    return-void

    .line 1337
    :cond_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    invoke-static {v0, p0, v5}, Lcom/android/server/ConnectivityService;->access$invoke-stopUsingNetworkFeature-4e38e2(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    goto :goto_0
.end method

.method public isSameUser(IIILjava/lang/String;)Z
    .locals 6
    .parameter "pid"
    .parameter "uid"
    .parameter "networkType"
    .parameter "feature"

    .prologue
    .line 1351
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(IIILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isSameUser(IIILjava/lang/String;I)Z
    .locals 1
    .parameter "pid"
    .parameter "uid"
    .parameter "networkType"
    .parameter "feature"
    .parameter "radioNum"

    .prologue
    .line 1355
    iget v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    if-ne v0, p3, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-static {v0, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mRadioNum:I

    if-ne v0, p5, :cond_0

    .line 1357
    const/4 v0, 0x1

    .line 1359
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSameUser(Lcom/android/server/ConnectivityService$FeatureUser;)Z
    .locals 6
    .parameter "u"

    .prologue
    .line 1345
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1347
    :goto_0
    return v0

    :cond_0
    iget v1, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    iget v2, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    iget v3, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    iget-object v4, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mRadioNum:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(IIILjava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FeatureUser("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mRadioNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mCreateTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSec ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unlinkDeathRecipient()V
    .locals 2

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1305
    return-void
.end method
