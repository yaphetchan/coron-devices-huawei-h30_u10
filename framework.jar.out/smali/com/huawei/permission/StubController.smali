.class public Lcom/huawei/permission/StubController;
.super Ljava/lang/Object;
.source "StubController.java"


# static fields
.field public static final ACTION_PTIVATE_DELETE:I = 0x3

.field public static final ACTION_PTIVATE_NONE:I = 0x0

.field public static final ACTION_PTIVATE_READ:I = 0x1

.field public static final ACTION_PTIVATE_WRITE:I = 0x2

.field public static final AGGRESSIVE_DEFENSE_OFF:I = 0x1

.field public static final AGGRESSIVE_DEFENSE_ON:I = 0x0

.field public static final APP_GOOGLE:Ljava/lang/String; = "com.android"

.field public static final APP_HUAWEI:Ljava/lang/String; = "com.huawei"

.field public static final COMMON_VALUE_INTENT_KEY:I = 0x1330615

.field public static final CONTENT_COMMON_URI:Ljava/lang/String; = "content://com.huawei.permissionmanager.provider.PermissionDataProvider/common"

.field public static final CONTENT_LOG_URI:Ljava/lang/String; = "content://com.huawei.permissionmanager.provider.PermissionDataProvider/log"

.field public static final CONTENT_URI:Ljava/lang/String; = "content://com.huawei.permissionmanager.provider.PermissionDataProvider/permission"

.field private static final CUST_URL:Ljava/lang/String; = "/data/cust"

.field public static final MIN_APPLICATION_UID:I = 0x2710

.field public static final PATH:Ljava/lang/String; = "/data/data/com.huawei.permissionmanager/databases/permission.db"

.field public static final PERMISSION_ACCESS_3G:I = 0x100

.field public static final PERMISSION_ACCESS_WIFI:I = 0x200

.field public static final PERMISSION_ACTION_CALL:I = 0x40

.field public static final PERMISSION_CALENDAR:I = 0x800

.field public static final PERMISSION_CALLLOG:I = 0x2

.field public static final PERMISSION_CALLLOG_DELETE:I = 0x40000

.field public static final PERMISSION_CALLLOG_WRITE:I = 0x8000

.field public static final PERMISSION_CALL_LISTENER:I = 0x80

.field public static final PERMISSION_CAMERA:I = 0x400

.field public static final PERMISSION_CONTACTS:I = 0x1

.field public static final PERMISSION_CONTACTS_DELETE:I = 0x20000

.field public static final PERMISSION_CONTACTS_WRITE:I = 0x4000

.field public static final PERMISSION_GET_DEVICEID:I = 0x10

.field public static final PERMISSION_GET_PACKAGE_LIST:I = 0x100000

.field public static final PERMISSION_LOCATION:I = 0x8

.field public static final PERMISSION_NONE:I = 0x0

.field public static final PERMISSION_NOTIFICATION:I = 0x1000

.field public static final PERMISSION_SEND_SMS:I = 0x20

.field public static final PERMISSION_SMSLOG:I = 0x4

.field public static final PERMISSION_SMSLOG_DELETE:I = 0x80000

.field public static final PERMISSION_SMSLOG_WRITE:I = 0x10000

.field public static final PERMISSION_TYPE_ALLOWED:I = 0x1

.field public static final PERMISSION_TYPE_BLOCKED:I = 0x2

.field public static final PERMISSION_TYPE_FAIL:I = 0x0

.field public static final PERMISSION_TYPE_UNKNOWN:I = -0x1

.field public static final REMIND_FAIL:I = -0x1

.field public static final REMIND_SKIP:I = 0x1

.field public static final REMIND_SUCCESS:I = 0x0

.field public static final SEND_INTENT_VALUE:I = 0x0

.field private static final SYSTEM_APP:Ljava/lang/String; = "/system/app"

.field public static final TABLE_COLUM_KEY:Ljava/lang/String; = "key"

.field public static final TABLE_COLUM_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final TABLE_COLUM_PERMISSION_CFG:Ljava/lang/String; = "permissionCfg"

.field public static final TABLE_COLUM_PERMISSION_CODE:Ljava/lang/String; = "permissionCode"

.field public static final TABLE_COLUM_TRUST:Ljava/lang/String; = "trust"

.field public static final TABLE_COLUM_UID:Ljava/lang/String; = "uid"

.field public static final TABLE_COLUM_VALUE:Ljava/lang/String; = "value"

.field public static final TABLE_COMMON_COLUM_KEY:Ljava/lang/String; = "key"

.field public static final TABLE_COMMON_COLUM_VALUE:Ljava/lang/String; = "value"

.field public static final TABLE_NAME_COMMON:Ljava/lang/String; = "commonTable"

.field public static final TABLE_NAME_PERMSSION:Ljava/lang/String; = "permissionCfg"

.field static final TAG:Ljava/lang/String; = "StubController"

.field public static final USER_ALLOWED:I = 0x1

.field public static final USER_IGNORED:I = 0x0

.field public static final USER_REFUSED:I = 0x2

.field public static final isPermissionManagerPropertyOn:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 502
    const-string/jumbo v0, "ro.config.hw_rightsmgr"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/huawei/permission/StubController;->isPermissionManagerPropertyOn:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkHwPermission(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 5
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 442
    if-nez p0, :cond_1

    .line 461
    :cond_0
    :goto_0
    return v3

    .line 445
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, pAction:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 449
    const-string v4, "android.intent.action.CALL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 450
    new-instance v0, Lcom/huawei/permission/CallPermission;

    invoke-direct {v0, p1}, Lcom/huawei/permission/CallPermission;-><init>(Landroid/content/Context;)V

    .line 451
    .local v0, callPermission:Lcom/huawei/permission/CallPermission;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, p0, v3}, Lcom/huawei/permission/CallPermission;->isCallBlocked(Landroid/content/Intent;I)Z

    move-result v3

    goto :goto_0

    .line 454
    .end local v0           #callPermission:Lcom/huawei/permission/CallPermission;
    :cond_2
    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 455
    :cond_3
    new-instance v1, Lcom/huawei/permission/CameraPermission;

    invoke-direct {v1, p1}, Lcom/huawei/permission/CameraPermission;-><init>(Landroid/content/Context;)V

    .line 456
    .local v1, cameraPermission:Lcom/huawei/permission/CameraPermission;
    invoke-virtual {v1}, Lcom/huawei/permission/CameraPermission;->remind()V

    .line 457
    iget-boolean v3, v1, Lcom/huawei/permission/CameraPermission;->isCameraBlocked:Z

    goto :goto_0
.end method

.method public static checkPrecondition(Landroid/content/Context;I)Z
    .locals 3
    .parameter "context"
    .parameter "uid"

    .prologue
    const/4 v0, 0x0

    .line 192
    sget v1, Lcom/huawei/permission/StubController;->isPermissionManagerPropertyOn:I

    if-nez v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 197
    :cond_1
    if-nez p0, :cond_2

    .line 198
    const-string v1, "StubController"

    const-string v2, "context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    :cond_2
    invoke-static {p0, p1}, Lcom/huawei/permission/StubController;->isSystemApp(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkSystemAppInternal(Landroid/content/Context;IZ)Z
    .locals 5
    .parameter "context"
    .parameter "callUid"
    .parameter "excludeCust"

    .prologue
    const/4 v2, 0x1

    .line 219
    invoke-static {}, Lcom/huawei/permission/StubController;->getHoldService()Lcom/huawei/permission/IHoldService;

    move-result-object v1

    .line 220
    .local v1, hService:Lcom/huawei/permission/IHoldService;
    if-nez v1, :cond_0

    .line 221
    const-string v3, "StubController"

    const-string/jumbo v4, "service = null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_0
    return v2

    .line 226
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/huawei/permission/IHoldService;->checkSystemAppInternal(IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getHoldService()Lcom/huawei/permission/IHoldService;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 286
    const/4 v2, 0x0

    .line 288
    .local v2, hService:Lcom/huawei/permission/IHoldService;
    :try_start_0
    const-string v4, "com.huawei.permissionmanager.service.holdservice"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 289
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_0

    move-object v2, v3

    .line 304
    .end local v0           #b:Landroid/os/IBinder;
    .end local v2           #hService:Lcom/huawei/permission/IHoldService;
    :goto_0
    return-object v2

    .line 293
    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v2       #hService:Lcom/huawei/permission/IHoldService;
    :cond_0
    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v4

    if-nez v4, :cond_1

    .line 294
    const-string v4, "StubController"

    const-string v5, "binder is not exist"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 295
    goto :goto_0

    .line 298
    :cond_1
    invoke-static {v0}, Lcom/huawei/permission/IHoldService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/permission/IHoldService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 299
    .end local v0           #b:Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 300
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .line 301
    goto :goto_0
.end method

.method public static getPendingIntent(ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 5
    .parameter "requestCode"
    .parameter "intent"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 487
    invoke-static {}, Lcom/huawei/permission/StubController;->getHoldService()Lcom/huawei/permission/IHoldService;

    move-result-object v1

    .line 488
    .local v1, service:Lcom/huawei/permission/IHoldService;
    if-nez v1, :cond_0

    .line 489
    const-string v3, "StubController"

    const-string v4, "getPendingIntent fail, is the holdservice running?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :goto_0
    return-object v2

    .line 494
    :cond_0
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Lcom/huawei/permission/IHoldService;->getPendingIntent(ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "StubController"

    const-string v4, "getPendingIntent, fail, remote exception."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static holdForGetPermissionSelection(IILjava/lang/String;)I
    .locals 7
    .parameter "permissionType"
    .parameter "uid"
    .parameter "desAddr"

    .prologue
    const/4 v3, 0x0

    .line 249
    invoke-static {}, Lcom/huawei/permission/StubController;->getHoldService()Lcom/huawei/permission/IHoldService;

    move-result-object v1

    .line 250
    .local v1, hService:Lcom/huawei/permission/IHoldService;
    if-nez v1, :cond_0

    .line 251
    const-string v4, "StubController"

    const-string/jumbo v5, "service = null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 281
    :goto_0
    return v2

    .line 255
    :cond_0
    const-string v4, "StubController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "holdAndGetPermissionType permissionType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, p1, v5}, Landroid/app/IActivityManager;->handleANRFilterFIFO(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 264
    const/4 v2, 0x0

    .line 268
    .local v2, holdResult:I
    :try_start_1
    invoke-interface {v1, p1, p0, p2}, Lcom/huawei/permission/IHoldService;->holdServiceByRequestPermission(IILjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    .line 275
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, p1, v5}, Landroid/app/IActivityManager;->handleANRFilterFIFO(II)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 278
    goto :goto_0

    .line 259
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #holdResult:I
    :catch_1
    move-exception v0

    .line 260
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 261
    goto :goto_0

    .line 269
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #holdResult:I
    :catch_2
    move-exception v0

    .line 270
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 275
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, p1, v5}, Landroid/app/IActivityManager;->handleANRFilterFIFO(II)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move v2, v3

    .line 278
    goto :goto_0

    .line 276
    :catch_3
    move-exception v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 278
    goto :goto_0

    .line 273
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 275
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, p1, v6}, Landroid/app/IActivityManager;->handleANRFilterFIFO(II)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 278
    throw v4

    .line 276
    :catch_4
    move-exception v0

    .line 277
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 278
    goto :goto_0
.end method

.method public static declared-synchronized isGlobalSwitchOn(Landroid/content/Context;I)Z
    .locals 2
    .parameter "context"
    .parameter "permissionType"

    .prologue
    .line 241
    const-class v0, Lcom/huawei/permission/StubController;

    monitor-enter v0

    const/4 v1, 0x1

    monitor-exit v0

    return v1
.end method

.method public static isMatchMms(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 465
    if-nez p0, :cond_1

    .line 477
    :cond_0
    :goto_0
    return v2

    .line 468
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, pAction:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 471
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 472
    .local v0, componentName:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 474
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isNotificationNeedCover(Landroid/content/Context;II)Z
    .locals 11
    .parameter "context"
    .parameter "permissionType"
    .parameter "uid"

    .prologue
    const/4 v0, 0x0

    .line 135
    const/4 v8, 0x0

    .line 136
    .local v8, isNeedCover:Z
    sget v2, Lcom/huawei/permission/StubController;->isPermissionManagerPropertyOn:I

    if-eqz v2, :cond_0

    if-nez p0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v0

    .line 141
    :cond_1
    invoke-static {p0, p2}, Lcom/huawei/permission/StubController;->isSystemAndNotCustApp(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    :try_start_0
    invoke-static {p0, p2, p1}, Lcom/huawei/permission/StubController;->updateDb(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    const-string v0, "content://com.huawei.permissionmanager.provider.PermissionDataProvider/notification"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 153
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 155
    .local v6, c:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 156
    if-nez v6, :cond_3

    .line 178
    if-eqz v6, :cond_2

    .line 179
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    goto :goto_0

    .line 147
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 148
    .local v7, e:Ljava/lang/Exception;
    const-string v2, "StubController"

    const-string v3, "areNotificationsNeedCover updateDb exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_3
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 161
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 178
    if-eqz v6, :cond_4

    .line 179
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    goto :goto_0

    .line 165
    :cond_5
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 166
    const-string/jumbo v0, "permissionCfg"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 167
    .local v10, permissionCfgIndex:I
    const/4 v0, -0x1

    if-eq v0, v10, :cond_6

    .line 168
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v9

    .line 169
    .local v9, permissionCfg:I
    and-int v0, v9, p1

    if-nez v0, :cond_6

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_6

    .line 171
    const/4 v8, 0x1

    .line 178
    .end local v9           #permissionCfg:I
    :cond_6
    if-eqz v6, :cond_7

    .line 179
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v10           #permissionCfgIndex:I
    :cond_7
    :goto_1
    move v0, v8

    .line 182
    goto :goto_0

    .line 175
    :catch_1
    move-exception v7

    .line 176
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_4
    const-string v0, "StubController"

    const-string v2, "Notification areNotificationsNeedCover error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 178
    if-eqz v6, :cond_7

    .line 179
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 178
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_8

    .line 179
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method private static isSystemAndNotCustApp(Landroid/content/Context;I)Z
    .locals 1
    .parameter "context"
    .parameter "callUid"

    .prologue
    .line 234
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/huawei/permission/StubController;->checkSystemAppInternal(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static isSystemApp(Landroid/content/Context;I)Z
    .locals 1
    .parameter "context"
    .parameter "callUid"

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/huawei/permission/StubController;->checkSystemAppInternal(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static notifyAlert(Landroid/content/Context;IIILjava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "uid"
    .parameter "permissionType"
    .parameter "permissionOp"
    .parameter "telNumber"

    .prologue
    .line 309
    const/4 v2, 0x0

    .line 310
    .local v2, intentStr:Ljava/lang/String;
    sparse-switch p2, :sswitch_data_0

    .line 356
    :goto_0
    return-void

    .line 312
    :sswitch_0
    const-string v2, "com.huawei.permissionmanager.wiretap"

    .line 344
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "callerUid"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    const-string v3, "eventType"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    const-string/jumbo v3, "telNumber"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string/jumbo v3, "permissionOp"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 351
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "StubController"

    const-string v4, "broadcastIntent failed error "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 315
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_1
    const-string v2, "com.huawei.permissionmanager.takepicture"

    .line 316
    goto :goto_1

    .line 318
    :sswitch_2
    const-string v2, "com.huawei.permissionmanager.absorption"

    .line 319
    goto :goto_1

    .line 322
    :sswitch_3
    const-string v2, "com.huawei.permissionmanager.absorption"

    .line 325
    goto :goto_1

    .line 328
    :sswitch_4
    const-string v2, "com.huawei.permissionmanager.notification"

    .line 329
    goto :goto_1

    .line 336
    :sswitch_5
    const-string v2, "com.huawei.permissionmanager.private"

    .line 337
    goto :goto_1

    .line 310
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x4 -> :sswitch_5
        0x8 -> :sswitch_5
        0x10 -> :sswitch_5
        0x20 -> :sswitch_2
        0x40 -> :sswitch_3
        0x80 -> :sswitch_0
        0x400 -> :sswitch_1
        0x800 -> :sswitch_5
        0x1000 -> :sswitch_4
    .end sparse-switch
.end method

.method public static updateDb(Landroid/content/Context;II)V
    .locals 18
    .parameter "context"
    .parameter "uid"
    .parameter "permissionType"

    .prologue
    .line 360
    const/4 v9, 0x0

    .line 362
    .local v9, isRowExisted:Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 363
    .local v10, packageManager:Landroid/content/pm/PackageManager;
    if-nez v10, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    const/16 v16, 0x0

    .line 369
    .local v16, pkgNames:[Ljava/lang/String;
    :try_start_0
    move/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v16

    .line 370
    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    array-length v1, v0

    if-gtz v1, :cond_3

    .line 371
    :cond_2
    const-string v1, "StubController"

    const-string/jumbo v3, "pkgNames = null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 374
    :catch_0
    move-exception v8

    .line 375
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 379
    .end local v8           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v1, 0x0

    aget-object v15, v16, v1

    .line 381
    .local v15, pkgName:Ljava/lang/String;
    const-string v1, "content://com.huawei.permissionmanager.provider.PermissionDataProvider/notification"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 383
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 384
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 388
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 389
    const/4 v9, 0x1

    .line 392
    :cond_4
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 393
    .local v17, values:Landroid/content/ContentValues;
    const/4 v11, 0x0

    .line 394
    .local v11, permissionCfg:I
    const/4 v13, 0x0

    .line 396
    .local v13, permissionCode:I
    if-eqz v9, :cond_8

    .line 397
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 398
    const-string/jumbo v1, "permissionCode"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 399
    .local v14, permissionCodeIndex:I
    const/4 v1, -0x1

    if-ne v1, v14, :cond_5

    .line 400
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 404
    :cond_5
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 405
    and-int v1, v13, p2

    if-eqz v1, :cond_6

    .line 406
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 410
    :cond_6
    const-string/jumbo v1, "permissionCfg"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 411
    .local v12, permissionCfgIndex:I
    const/4 v1, -0x1

    if-ne v1, v14, :cond_7

    .line 412
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 416
    :cond_7
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 419
    .end local v12           #permissionCfgIndex:I
    .end local v14           #permissionCodeIndex:I
    :cond_8
    or-int v13, v13, p2

    .line 420
    const-string/jumbo v1, "permissionCode"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v11, v1

    .line 423
    const-string/jumbo v1, "permissionCfg"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 426
    if-eqz v9, :cond_9

    .line 427
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 435
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 429
    :cond_9
    const-string/jumbo v1, "uid"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 430
    const-string/jumbo v1, "packageName"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1
.end method
