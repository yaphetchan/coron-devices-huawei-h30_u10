.class public Landroid/server/BluetoothA2dpService;
.super Landroid/bluetooth/IBluetoothA2dp$Stub;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothA2dpService$FMServiceDeathHandler;,
        Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;
    }
.end annotation


# static fields
.field public static final ACTION_FM_OVER_BT_CONTROLLER:Ljava/lang/String; = "android.server.a2dp.action.FM_OVER_BT_CONTROLLER"

.field public static final ACTION_FM_OVER_BT_HOST:Ljava/lang/String; = "android.server.a2dp.action.FM_OVER_BT_HOST"

.field static final AVRCP_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.bluetooth.avrcp.IBTAvrcpService"

.field public static final BLUETOOTH_A2DP_SERVICE:Ljava/lang/String; = "bluetooth_a2dp"

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_ENABLED:Ljava/lang/String; = "bluetooth_enabled"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final DBG:Z = true

.field public static final EXTRA_RESULT_STATE:Ljava/lang/String; = "android.bluetooth.a2dp.extra.RESULT_STATE"

.field public static final FMSTART_ALREADY:I = 0x2

.field public static final FMSTART_FAILED:I = 0x1

.field public static final FMSTART_SUCCESS:I = 0x0

.field public static final FM_START_FAILED:I = 0x21

.field private static final FM_VIA_CONTROLLER:I = 0x0

.field private static final FM_VIA_HOST:I = 0x1

.field private static final MSG_CONNECTION_STATE_CHANGED:I = 0x0

.field public static final MSG_FM_POWER_DOWN:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERDOWN"

.field public static final MSG_FM_POWER_UP:Ljava/lang/String; = "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERUP"

.field private static final PROPERTY_STATE:Ljava/lang/String; = "State"

.field private static final TAG:Ljava/lang/String; = "BluetoothA2dpService"

.field private static sInstance:Landroid/server/BluetoothA2dpService;

.field private static sSinkCount:I


# instance fields
.field private mA2dpDisconnecting:I

.field private mA2dpState:I

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAudioDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mBluetoothService:Landroid/server/BluetoothService;

.field private final mContext:Landroid/content/Context;

.field private mFmOverBtMode:Z

.field private mFmOverBtOn:Z

.field private mFmResult:I

.field private mFmStartReq:Z

.field private mIntentBroadcastHandler:Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

.field private mPriorityLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTargetA2dpState:I

.field private mWM:Landroid/net/wifi/WifiManager;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .locals 4
    .parameter "context"
    .parameter "bluetoothService"

    .prologue
    .line 214
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;-><init>()V

    .line 112
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    .line 147
    new-instance v1, Landroid/server/BluetoothA2dpService$1;

    invoke-direct {v1, p0}, Landroid/server/BluetoothA2dpService$1;-><init>(Landroid/server/BluetoothA2dpService;)V

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 215
    iput-object p1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    .line 217
    sput-object p0, Landroid/server/BluetoothA2dpService;->sInstance:Landroid/server/BluetoothA2dpService;

    .line 218
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 219
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "BluetoothA2dpService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 221
    new-instance v1, Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;-><init>(Landroid/server/BluetoothA2dpService;Landroid/server/BluetoothA2dpService$1;)V

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mIntentBroadcastHandler:Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;

    .line 223
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    .line 225
    iput-object p2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    .line 226
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    if-nez v1, :cond_0

    .line 227
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Platform does not support Bluetooth"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_0
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->initNative()Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not init BluetoothA2dpService"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 236
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 237
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->addFmAndWifiActions()V

    .line 244
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 246
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    .line 248
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->onBluetoothEnable()V

    .line 250
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    .line 251
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p0}, Landroid/server/BluetoothService;->setA2dpService(Landroid/server/BluetoothA2dpService;)V

    .line 254
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->initFmOverBtFeature()V

    .line 256
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mPriorityLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 258
    return-void
.end method

.method static synthetic access$000(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->onBluetoothEnable()V

    return-void
.end method

.method static synthetic access$100(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->onBluetoothDisable()V

    return-void
.end method

.method static synthetic access$1000(Landroid/server/BluetoothA2dpService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-static {p0}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/server/BluetoothA2dpService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    return v0
.end method

.method static synthetic access$1202(Landroid/server/BluetoothA2dpService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    return p1
.end method

.method static synthetic access$1300(Landroid/server/BluetoothA2dpService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtMode:Z

    return v0
.end method

.method static synthetic access$1400(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->stopFm()V

    return-void
.end method

.method static synthetic access$200(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    return-object v0
.end method

.method static synthetic access$400(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->avrcpVolumeUpNative(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->avrcpVolumeDownNative(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/server/BluetoothA2dpService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->handleFMandWifiAction(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Landroid/server/BluetoothA2dpService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-static {p0}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized addAudioSink(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    :cond_0
    monitor-exit p0

    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private addFmAndWifiActions()V
    .locals 2

    .prologue
    .line 1003
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1004
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1005
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1006
    return-void
.end method

.method private adjustOtherSinkPriorities(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter "connectedDevice"

    .prologue
    .line 767
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 768
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 770
    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2}, Landroid/server/BluetoothA2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 773
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    return-void
.end method

.method private synchronized native declared-synchronized avrcpVolumeDownNative(Ljava/lang/String;)Z
.end method

.method private synchronized native declared-synchronized avrcpVolumeUpNative(Ljava/lang/String;)Z
.end method

.method private checkSinkSuspendState(I)Z
    .locals 3
    .parameter "state"

    .prologue
    .line 776
    const/4 v0, 0x1

    .line 779
    .local v0, result:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[a2dp] checkSinkSuspendState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 780
    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    .line 781
    const/4 v1, 0x0

    .line 807
    :goto_0
    return v1

    .line 784
    :cond_0
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 785
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "A2dpSuspended=true"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :goto_1
    move v1, v0

    .line 807
    goto :goto_0

    .line 786
    :cond_1
    iget v1, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 787
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "A2dpSuspended=false"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_1

    .line 789
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private native cleanupNative()V
.end method

.method private synchronized native declared-synchronized connectSinkNative(Ljava/lang/String;)Z
.end method

.method private convertBluezSinkStringToState(Ljava/lang/String;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 270
    const-string v0, "disconnected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const/4 v0, 0x0

    .line 285
    :goto_0
    return v0

    .line 272
    :cond_0
    const-string v0, "connecting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    const/4 v0, 0x1

    goto :goto_0

    .line 274
    :cond_1
    const-string v0, "connected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    const/4 v0, 0x2

    goto :goto_0

    .line 276
    :cond_2
    const-string/jumbo v0, "playing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    const/16 v0, 0xa

    goto :goto_0

    .line 280
    :cond_3
    const-string v0, "fmstartfailed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 281
    const/16 v0, 0x21

    goto :goto_0

    .line 285
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static debugLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1199
    const-string v0, "BluetoothA2dpService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    return-void
.end method

.method private decA2dpThroughput4WifiOn()V
    .locals 0

    .prologue
    .line 1128
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->decA2dpThroughput4WifiOnNative()V

    .line 1129
    return-void
.end method

.method private native decA2dpThroughput4WifiOnNative()V
.end method

.method private synchronized native declared-synchronized disconnectSinkNative(Ljava/lang/String;)Z
.end method

.method private fmOverBtViaController()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 1060
    const-string v0, "fmOverBtViaController On"

    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 1061
    iget v0, p0, Landroid/server/BluetoothA2dpService;->mA2dpState:I

    if-ge v0, v1, :cond_1

    .line 1062
    const-string v0, "A2dp is not connected!"

    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 1063
    iput-boolean v3, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    .line 1064
    iput v2, p0, Landroid/server/BluetoothA2dpService;->mFmResult:I

    .line 1065
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->fmSendIntent()V

    .line 1083
    :cond_0
    :goto_0
    return-void

    .line 1068
    :cond_1
    iget v0, p0, Landroid/server/BluetoothA2dpService;->mA2dpState:I

    if-lt v0, v1, :cond_0

    .line 1069
    iget v0, p0, Landroid/server/BluetoothA2dpService;->mA2dpState:I

    if-ne v0, v1, :cond_2

    .line 1070
    const-string/jumbo v0, "mA2dpState == BluetoothA2dp.STATE_CONNECTED"

    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 1074
    :goto_1
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->fmSendStartReqNative()I

    move-result v0

    if-nez v0, :cond_3

    .line 1075
    const-string v0, "BluetoothA2dpService"

    const-string v1, "[A2DP]fmSendStartReqNative fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iput-boolean v3, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    .line 1077
    iput v2, p0, Landroid/server/BluetoothA2dpService;->mFmResult:I

    .line 1078
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->fmSendIntent()V

    goto :goto_0

    .line 1072
    :cond_2
    const-string/jumbo v0, "mA2dpState == BluetoothA2dp.STATE_PLAYING"

    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1081
    :cond_3
    iput-boolean v2, p0, Landroid/server/BluetoothA2dpService;->mFmStartReq:Z

    goto :goto_0
.end method

.method private fmOverBtViaHost()V
    .locals 2

    .prologue
    .line 1099
    const-string v1, "fmOverBtViaHost On"

    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 1101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.server.a2dp.action.FM_OVER_BT_HOST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1102
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1103
    return-void
.end method

.method private fmSendIntent()V
    .locals 3

    .prologue
    .line 1111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.server.a2dp.action.FM_OVER_BT_CONTROLLER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1112
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.a2dp.extra.RESULT_STATE"

    iget v2, p0, Landroid/server/BluetoothA2dpService;->mFmResult:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1113
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1114
    return-void
.end method

.method private native fmSendStartReqNative()I
.end method

.method private native fmSendStopReqNative()V
.end method

.method private fmThroughPath()I
    .locals 1

    .prologue
    .line 1107
    const/4 v0, 0x0

    return v0
.end method

.method public static getA2dpServiceInstance()Landroid/server/BluetoothA2dpService;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Landroid/server/BluetoothA2dpService;->sInstance:Landroid/server/BluetoothA2dpService;

    return-object v0
.end method

.method private synchronized native declared-synchronized getSinkPropertiesNative(Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method private handleFMSinkStateChange(I)I
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1151
    const/16 v0, 0x21

    if-ne p1, v0, :cond_1

    .line 1152
    const-string v0, "BluetoothA2dpService"

    const-string v1, "FM Start Req Failed "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    iput v3, p0, Landroid/server/BluetoothA2dpService;->mFmResult:I

    .line 1155
    const/4 p1, 0x0

    .line 1157
    iget-boolean v0, p0, Landroid/server/BluetoothA2dpService;->mFmStartReq:Z

    if-eqz v0, :cond_0

    .line 1158
    iput-boolean v2, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    .line 1159
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->fmSendIntent()V

    .line 1160
    iput-boolean v2, p0, Landroid/server/BluetoothA2dpService;->mFmStartReq:Z

    .line 1170
    :cond_0
    :goto_0
    return p1

    .line 1162
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 1163
    iput v2, p0, Landroid/server/BluetoothA2dpService;->mFmResult:I

    .line 1164
    iget-boolean v0, p0, Landroid/server/BluetoothA2dpService;->mFmStartReq:Z

    if-eqz v0, :cond_0

    .line 1165
    iput-boolean v3, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    .line 1166
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->fmSendIntent()V

    .line 1167
    iput-boolean v2, p0, Landroid/server/BluetoothA2dpService;->mFmStartReq:Z

    goto :goto_0
.end method

.method private handleFMandWifiAction(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 941
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERUP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 943
    const-string v2, "FM Power On!"

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 945
    const-string v2, "bt.fmoverbt"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 946
    const-string v2, "[A2DP] BT chip does not support Fm Over Bt, return."

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 948
    iput v4, p0, Landroid/server/BluetoothA2dpService;->mFmResult:I

    .line 949
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->fmSendIntent()V

    .line 1000
    :cond_0
    :goto_0
    return-void

    .line 953
    :cond_1
    iget v2, p0, Landroid/server/BluetoothA2dpService;->mA2dpDisconnecting:I

    if-ne v2, v4, :cond_2

    .line 954
    const-string v2, "A2dp is disconnecting,return."

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 956
    iput v4, p0, Landroid/server/BluetoothA2dpService;->mFmResult:I

    .line 957
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->fmSendIntent()V

    goto :goto_0

    .line 960
    :cond_2
    iget-boolean v2, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Landroid/server/BluetoothA2dpService;->mFmStartReq:Z

    if-nez v2, :cond_4

    .line 963
    iget-boolean v2, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtMode:Z

    if-eqz v2, :cond_0

    .line 964
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->fmThroughPath()I

    move-result v2

    if-nez v2, :cond_3

    .line 965
    const-string v2, "FM_VIA_CONTROLLER"

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 966
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->fmOverBtViaController()V

    goto :goto_0

    .line 968
    :cond_3
    const-string v2, "FM_VIA_HOST"

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 969
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->fmOverBtViaHost()V

    goto :goto_0

    .line 973
    :cond_4
    const-string v2, "FM was Power On,ignore."

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 975
    const/4 v2, 0x2

    iput v2, p0, Landroid/server/BluetoothA2dpService;->mFmResult:I

    .line 976
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->fmSendIntent()V

    goto :goto_0

    .line 978
    :cond_5
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_TOA2DP_FM_POWERDOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 979
    const-string v2, "FM Power Off!"

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 980
    iget-boolean v2, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    if-eqz v2, :cond_6

    .line 981
    iput-boolean v3, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    .line 983
    iget-boolean v2, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtMode:Z

    if-eqz v2, :cond_0

    .line 984
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->stopFm()V

    goto :goto_0

    .line 987
    :cond_6
    const-string v2, "FM was Power down,ignore."

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 989
    :cond_7
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 990
    const-string v2, "Receive WifiManager.WIFI_STATE_CHANGED_ACTION."

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 991
    const-string/jumbo v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 992
    .local v1, state:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    .line 993
    const-string v2, "Wifi is on."

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 994
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->decA2dpThroughput4WifiOn()V

    goto/16 :goto_0

    .line 995
    :cond_8
    if-ne v1, v4, :cond_0

    .line 996
    const-string v2, "Wifi is off."

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 997
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->incA2dpThroughput4WifiOff()V

    goto/16 :goto_0
.end method

.method private handleFmSinkPlayingStateChange(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1040
    const/16 v0, 0x21

    if-ne p1, v0, :cond_1

    .line 1041
    const-string v0, "BluetoothA2dpService"

    const-string v1, "FM Start Req Failed "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iput v3, p0, Landroid/server/BluetoothA2dpService;->mFmResult:I

    .line 1043
    iget-boolean v0, p0, Landroid/server/BluetoothA2dpService;->mFmStartReq:Z

    if-eqz v0, :cond_0

    .line 1044
    iput-boolean v2, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    .line 1045
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->fmSendIntent()V

    .line 1046
    iput-boolean v2, p0, Landroid/server/BluetoothA2dpService;->mFmStartReq:Z

    .line 1057
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 1049
    iput v2, p0, Landroid/server/BluetoothA2dpService;->mFmResult:I

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Yi] hdl sink state start req:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/server/BluetoothA2dpService;->mFmStartReq:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 1051
    iget-boolean v0, p0, Landroid/server/BluetoothA2dpService;->mFmStartReq:Z

    if-eqz v0, :cond_0

    .line 1052
    iput-boolean v3, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    .line 1053
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->fmSendIntent()V

    .line 1054
    iput-boolean v2, p0, Landroid/server/BluetoothA2dpService;->mFmStartReq:Z

    goto :goto_0
.end method

.method private handleSinkPlayingStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .parameter "device"
    .parameter "state"
    .parameter "prevState"

    .prologue
    .line 751
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 752
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 753
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 754
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 755
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 757
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A2DP Playing state : device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 763
    invoke-direct {p0, p2}, Landroid/server/BluetoothA2dpService;->handleFmSinkPlayingStateChange(I)V

    .line 764
    return-void
.end method

.method private handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 5
    .parameter "device"
    .parameter "prevState"
    .parameter "state"

    .prologue
    .line 713
    invoke-direct {p0, p3}, Landroid/server/BluetoothA2dpService;->handleFMSinkStateChange(I)I

    move-result p3

    .line 715
    if-eq p3, p2, :cond_1

    .line 718
    invoke-direct {p0, p3}, Landroid/server/BluetoothA2dpService;->switchStatusOnSinkStateChange(I)V

    .line 720
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    invoke-direct {p0, p3}, Landroid/server/BluetoothA2dpService;->checkSinkSuspendState(I)Z

    .line 723
    const/4 v1, -0x1

    iput v1, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    .line 725
    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 729
    const/16 v1, 0x3e8

    invoke-virtual {p0, p1, v1}, Landroid/server/BluetoothA2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 732
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->adjustOtherSinkPriorities(Landroid/bluetooth/BluetoothDevice;)V

    .line 737
    :cond_0
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1, p3}, Landroid/media/AudioManager;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    .line 739
    .local v0, delay:I
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 740
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mIntentBroadcastHandler:Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mIntentBroadcastHandler:Landroid/server/BluetoothA2dpService$IntentBroadcastHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 748
    .end local v0           #delay:I
    :cond_1
    return-void
.end method

.method private handleWifiOnSinkStateChange(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1138
    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 1140
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mWM:Landroid/net/wifi/WifiManager;

    .line 1141
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mWM:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 1142
    .local v0, wifistate:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A2DP Wifi state:."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 1143
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1144
    const-string v1, "A2DP Wifi is on."

    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 1145
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->decA2dpThroughput4WifiOn()V

    .line 1148
    .end local v0           #wifistate:I
    :cond_0
    return-void
.end method

.method private incA2dpThroughput4WifiOff()V
    .locals 0

    .prologue
    .line 1132
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->incA2dpThroughput4WifiOffNative()V

    .line 1133
    return-void
.end method

.method private native incA2dpThroughput4WifiOffNative()V
.end method

.method private initFmOverBtFeature()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1010
    iput v1, p0, Landroid/server/BluetoothA2dpService;->mA2dpState:I

    .line 1011
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtMode:Z

    .line 1012
    iput v1, p0, Landroid/server/BluetoothA2dpService;->mA2dpDisconnecting:I

    .line 1013
    iput-boolean v1, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    .line 1014
    return-void
.end method

.method private native initNative()Z
.end method

.method private isA2dpDisconnect([Ljava/lang/String;)Z
    .locals 4
    .parameter "propValues"

    .prologue
    .line 1017
    const/4 v3, 0x0

    aget-object v1, p1, v3

    .line 1018
    .local v1, name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1019
    .local v0, disconnect:Z
    const-string v3, "State"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1020
    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-direct {p0, v3}, Landroid/server/BluetoothA2dpService;->convertBluezSinkStringToState(Ljava/lang/String;)I

    move-result v2

    .line 1021
    .local v2, state:I
    if-eqz v2, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 1022
    const/4 v0, 0x1

    .line 1025
    .end local v2           #state:I
    :cond_0
    return v0
.end method

.method private declared-synchronized isConnectSinkFeasible(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    .line 380
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->isSinkDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 391
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 385
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->addAudioSink(Landroid/bluetooth/BluetoothDevice;)V

    .line 387
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 388
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 391
    const/4 v1, 0x1

    goto :goto_0

    .line 380
    .end local v0           #path:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized isDisconnectSinkFeasible(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 455
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 456
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 466
    :goto_0
    :pswitch_0
    monitor-exit p0

    return v2

    .line 460
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 461
    .local v1, state:I
    packed-switch v1, :pswitch_data_0

    .line 466
    :pswitch_1
    const/4 v2, 0x1

    goto :goto_0

    .line 455
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #state:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 461
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isDisconnectSinkNative(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "path"
    .parameter "device"

    .prologue
    .line 1029
    const/4 v0, 0x0

    .line 1030
    .local v0, isDisconnectSink:Z
    invoke-virtual {p0, p2}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 1032
    :cond_0
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->disconnectSinkNative(Ljava/lang/String;)Z

    .line 1033
    const/4 v0, 0x1

    .line 1034
    const-string v1, "A2DP: onSinkPropertyChanged Priority is off, disconnect device "

    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 1036
    :cond_1
    return v0
.end method

.method private isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 8
    .parameter "device"

    .prologue
    const/4 v3, 0x0

    .line 201
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.DOCK_EVENT"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 202
    .local v1, i:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 203
    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 204
    .local v2, state:I
    if-eqz v2, :cond_0

    .line 205
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 206
    .local v0, dockDevice:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    const/4 v3, 0x1

    .line 211
    .end local v0           #dockDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #state:I
    :cond_0
    return v3
.end method

.method private isSinkDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 289
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/server/BluetoothService;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 290
    .local v0, uuids:[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_0

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    const/4 v1, 0x1

    .line 293
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 874
    const-string v0, "BluetoothA2dpService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    return-void
.end method

.method private declared-synchronized onBluetoothDisable()V
    .locals 9

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 333
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v2, v6, [Landroid/bluetooth/BluetoothDevice;

    .line 334
    .local v2, devices:[Landroid/bluetooth/BluetoothDevice;
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #devices:[Landroid/bluetooth/BluetoothDevice;
    check-cast v2, [Landroid/bluetooth/BluetoothDevice;

    .line 335
    .restart local v2       #devices:[Landroid/bluetooth/BluetoothDevice;
    move-object v0, v2

    .local v0, arr$:[Landroid/bluetooth/BluetoothDevice;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 336
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    .line 337
    .local v5, state:I
    sparse-switch v5, :sswitch_data_0

    .line 335
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 343
    :sswitch_0
    iget-boolean v6, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    if-eqz v6, :cond_0

    .line 344
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    .line 347
    :cond_0
    const/4 v6, 0x0

    invoke-direct {p0, v1, v5, v6}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 348
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/server/BluetoothA2dpService;->disconnectSinkNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 332
    .end local v0           #arr$:[Landroid/bluetooth/BluetoothDevice;
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #devices:[Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #state:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 353
    .restart local v0       #arr$:[Landroid/bluetooth/BluetoothDevice;
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v2       #devices:[Landroid/bluetooth/BluetoothDevice;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #state:I
    :sswitch_1
    const/4 v6, 0x3

    const/4 v7, 0x0

    :try_start_1
    invoke-direct {p0, v1, v6, v7}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_1

    .line 358
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v5           #state:I
    :cond_1
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 368
    .end local v0           #arr$:[Landroid/bluetooth/BluetoothDevice;
    .end local v2           #devices:[Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v7, "A2dpSuspended=true"

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 371
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v7, "bluetooth_enabled=false"

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 374
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->stopNative()V

    .line 376
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.mediatek.bluetooth.avrcp.IBTAvrcpService"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    monitor-exit p0

    return-void

    .line 337
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private declared-synchronized onBluetoothEnable()V
    .locals 12

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v10, "Devices"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/server/BluetoothService;->getProperty(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, devices:Ljava/lang/String;
    const/4 v9, 0x0

    sput v9, Landroid/server/BluetoothA2dpService;->sSinkCount:I

    .line 308
    if-eqz v3, :cond_1

    .line 309
    const-string v9, ","

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 310
    .local v7, paths:[Ljava/lang/String;
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v1, v4

    .line 311
    .local v6, path:Ljava/lang/String;
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v6}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, address:Ljava/lang/String;
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 313
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v8

    .line 314
    .local v8, remoteUuids:[Landroid/os/ParcelUuid;
    if-eqz v8, :cond_0

    .line 315
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/os/ParcelUuid;

    const/4 v10, 0x0

    sget-object v11, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 318
    invoke-direct {p0, v2}, Landroid/server/BluetoothA2dpService;->addAudioSink(Landroid/bluetooth/BluetoothDevice;)V

    .line 310
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 322
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #paths:[Ljava/lang/String;
    .end local v8           #remoteUuids:[Landroid/os/ParcelUuid;
    :cond_1
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v10, "bluetooth_enabled=true"

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 323
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v10, "A2dpSuspended=false"

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 326
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->startNative()V

    .line 328
    iget-object v9, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.mediatek.bluetooth.avrcp.IBTAvrcpService"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-exit p0

    return-void

    .line 303
    .end local v3           #devices:Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method private onConnectSinkResult(Ljava/lang/String;Z)V
    .locals 4
    .parameter "deviceObjectPath"
    .parameter "result"

    .prologue
    .line 820
    if-nez p2, :cond_0

    .line 821
    if-eqz p1, :cond_0

    .line 822
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 829
    .end local v0           #address:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 824
    .restart local v0       #address:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 825
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 826
    .local v2, state:I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0
.end method

.method private declared-synchronized onSinkPropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .parameter "path"
    .parameter "propValues"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 622
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 625
    invoke-direct {p0, p2}, Landroid/server/BluetoothA2dpService;->isA2dpDisconnect([Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 708
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 632
    :cond_1
    const/4 v5, 0x0

    :try_start_1
    aget-object v2, p2, v5

    .line 633
    .local v2, name:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 635
    const-string v5, "BluetoothA2dpService"

    const-string/jumbo v6, "onSinkPropertyChanged: Address of the remote device in null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 622
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 639
    .restart local v0       #address:Ljava/lang/String;
    .restart local v2       #name:Ljava/lang/String;
    :cond_2
    :try_start_2
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 642
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothA2dpService;->isDisconnectSinkNative(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 647
    const-string v5, "State"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 648
    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-direct {p0, v5}, Landroid/server/BluetoothA2dpService;->convertBluezSinkStringToState(Ljava/lang/String;)I

    move-result v4

    .line 649
    .local v4, state:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A2DP: onSinkPropertyChanged newState is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "mPlayingA2dpDevice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 651
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    .line 656
    if-eqz v4, :cond_3

    if-ne v4, v8, :cond_4

    .line 658
    :cond_3
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 659
    const/4 v5, 0x3

    invoke-direct {p0, v1, v5, v4}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 660
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A2DP: onSinkPropertyChanged 2 newState is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mPlayingA2dpDevice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 667
    :cond_4
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/server/BluetoothService;->notifyIncomingA2dpConnection(Ljava/lang/String;Z)Z

    .line 669
    invoke-direct {p0, v1}, Landroid/server/BluetoothA2dpService;->addAudioSink(Landroid/bluetooth/BluetoothDevice;)V

    .line 670
    const/4 v5, 0x0

    invoke-direct {p0, v1, v5, v4}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 706
    :goto_1
    invoke-direct {p0, v4}, Landroid/server/BluetoothA2dpService;->handleWifiOnSinkStateChange(I)V

    goto/16 :goto_0

    .line 675
    :cond_5
    iput v4, p0, Landroid/server/BluetoothA2dpService;->mA2dpState:I

    .line 677
    const/16 v5, 0xa

    if-ne v4, v5, :cond_6

    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_6

    .line 678
    iput-object v1, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 679
    const/16 v5, 0xb

    invoke-direct {p0, v1, v4, v5}, Landroid/server/BluetoothA2dpService;->handleSinkPlayingStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_1

    .line 680
    :cond_6
    if-ne v4, v7, :cond_7

    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v5, :cond_7

    .line 681
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 682
    const/16 v5, 0xb

    const/16 v6, 0xa

    invoke-direct {p0, v1, v5, v6}, Landroid/server/BluetoothA2dpService;->handleSinkPlayingStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 686
    const/16 v5, 0xb

    iput v5, p0, Landroid/server/BluetoothA2dpService;->mA2dpState:I

    goto :goto_1

    .line 689
    :cond_7
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    .line 690
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 693
    .local v3, prevState:I
    if-nez v3, :cond_8

    if-ne v4, v7, :cond_8

    .line 696
    const-string v5, "a2dp: notifyIncomingA2dpConnection....."

    invoke-static {v5}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 697
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/server/BluetoothService;->notifyIncomingA2dpConnection(Ljava/lang/String;Z)Z

    .line 700
    :cond_8
    invoke-direct {p0, v1, v3, v4}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private synchronized native declared-synchronized resumeSinkNative(Ljava/lang/String;)Z
.end method

.method private native startNative()V
.end method

.method private stopFm()V
    .locals 2

    .prologue
    .line 1086
    const-string/jumbo v0, "stop FM"

    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 1088
    iget v0, p0, Landroid/server/BluetoothA2dpService;->mA2dpState:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/server/BluetoothA2dpService;->mA2dpState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1096
    :cond_0
    :goto_0
    return-void

    .line 1091
    :cond_1
    iget v0, p0, Landroid/server/BluetoothA2dpService;->mA2dpState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 1092
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->fmSendStopReqNative()V

    goto :goto_0

    .line 1094
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    goto :goto_0
.end method

.method private native stopNative()V
.end method

.method private synchronized native declared-synchronized suspendSinkNative(Ljava/lang/String;)Z
.end method

.method private switchStatusOnSinkStateChange(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 1174
    if-ne p1, v3, :cond_0

    .line 1175
    const/4 v0, 0x1

    iput v0, p0, Landroid/server/BluetoothA2dpService;->mA2dpDisconnecting:I

    .line 1177
    :cond_0
    if-nez p1, :cond_1

    .line 1178
    iput v1, p0, Landroid/server/BluetoothA2dpService;->mA2dpDisconnecting:I

    .line 1181
    :cond_1
    if-gt p1, v2, :cond_3

    .line 1182
    iget-boolean v0, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    if-eqz v0, :cond_2

    .line 1183
    iput-boolean v1, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    .line 1185
    :cond_2
    iget-boolean v0, p0, Landroid/server/BluetoothA2dpService;->mFmStartReq:Z

    if-eqz v0, :cond_3

    .line 1186
    iput-boolean v1, p0, Landroid/server/BluetoothA2dpService;->mFmStartReq:Z

    .line 1190
    :cond_3
    if-eqz p1, :cond_4

    if-ne p1, v3, :cond_6

    .line 1191
    :cond_4
    sget v0, Landroid/server/BluetoothA2dpService;->sSinkCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/server/BluetoothA2dpService;->sSinkCount:I

    .line 1195
    :cond_5
    :goto_0
    return-void

    .line 1192
    :cond_6
    if-ne p1, v2, :cond_5

    .line 1193
    sget v0, Landroid/server/BluetoothA2dpService;->sSinkCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/server/BluetoothA2dpService;->sSinkCount:I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized allowIncomingConnect(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 6
    .parameter "device"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 598
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 610
    :goto_0
    monitor-exit p0

    return v2

    .line 604
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, v0}, Landroid/server/BluetoothService;->getAuthorizationAgentRequestData(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 605
    .local v1, data:Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 606
    const-string v3, "BluetoothA2dpService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allowIncomingConnect("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") called but no native data available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 598
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #data:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 609
    .restart local v0       #address:Ljava/lang/String;
    .restart local v1       #data:Ljava/lang/Integer;
    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowIncomingConnect: A2DP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 610
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v0, p2, v3}, Landroid/server/BluetoothService;->setAuthorizationNative(Ljava/lang/String;ZI)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    goto :goto_0
.end method

.method public declared-synchronized connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    .line 403
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectSink("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 406
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->isConnectSinkFeasible(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 414
    :goto_0
    monitor-exit p0

    return v2

    .line 408
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 409
    .local v1, sinkDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 410
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 403
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #sinkDevice:Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 413
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    const/16 v2, 0x3e8

    :try_start_2
    invoke-virtual {p0, p1, v2}, Landroid/server/BluetoothA2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 414
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothService;->connectSink(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    goto :goto_0
.end method

.method public declared-synchronized connectSinkInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .parameter "device"

    .prologue
    const/16 v6, 0x3e8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 418
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 451
    :goto_0
    monitor-exit p0

    return v2

    .line 420
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 423
    .local v1, state:I
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {p0, v2}, Landroid/server/BluetoothA2dpService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 427
    goto :goto_0

    .line 430
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 438
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, path:Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-ge v2, v6, :cond_2

    .line 442
    const/16 v2, 0x3e8

    invoke-virtual {p0, p1, v2}, Landroid/server/BluetoothA2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 444
    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 446
    invoke-direct {p0, v0}, Landroid/server/BluetoothA2dpService;->connectSinkNative(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 448
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v2, v1}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 449
    goto :goto_0

    .end local v0           #path:Ljava/lang/String;
    :pswitch_0
    move v2, v3

    .line 433
    goto :goto_0

    :pswitch_1
    move v2, v4

    .line 435
    goto :goto_0

    .restart local v0       #path:Ljava/lang/String;
    :cond_3
    move v2, v4

    .line 451
    goto :goto_0

    .line 418
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #state:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 423
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 430
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/4 v0, 0x0

    .line 470
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectSink("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 473
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->isDisconnectSinkFeasible(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 480
    :goto_0
    monitor-exit p0

    return v0

    .line 475
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    if-eqz v0, :cond_1

    .line 476
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/server/BluetoothA2dpService;->mFmOverBtOn:Z

    .line 480
    :cond_1
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/server/BluetoothService;->disconnectSink(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectSinkInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v3, 0x0

    .line 484
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 485
    .local v1, state:I
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, path:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 493
    :pswitch_0
    const/4 v2, 0x3

    invoke-direct {p0, p1, v1, v2}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V

    .line 494
    invoke-direct {p0, v0}, Landroid/server/BluetoothA2dpService;->disconnectSinkNative(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 496
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v2, v1}, Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 499
    :goto_0
    monitor-exit p0

    return v2

    :pswitch_1
    move v2, v3

    .line 490
    goto :goto_0

    .line 499
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 484
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #state:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 863
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    const-string v5, "BluetoothA2dpService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 871
    :cond_0
    monitor-exit p0

    return-void

    .line 866
    :cond_1
    :try_start_1
    const-string v3, "Cached audio devices:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 867
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 868
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 869
    .local v2, state:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/bluetooth/BluetoothA2dp;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 863
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #state:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 263
    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->cleanupNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    invoke-super {p0}, Landroid/os/Binder;->finalize()V

    .line 267
    return-void

    .line 265
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/os/Binder;->finalize()V

    throw v0
.end method

.method public declared-synchronized getConnectedDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 553
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 556
    .local v0, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-exit p0

    return-object v0

    .line 553
    .end local v0           #sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .parameter "device"

    .prologue
    .line 545
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    .local v0, state:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 548
    const/4 v1, 0x0

    .line 549
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 545
    .end local v0           #state:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 11
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 560
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BLUETOOTH"

    const-string v10, "Need BLUETOOTH permission"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 562
    .local v6, sinks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v8, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 563
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothA2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    .line 564
    .local v5, sinkState:I
    move-object v0, p1

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget v7, v0, v3

    .line 565
    .local v7, state:I
    if-ne v7, v5, :cond_1

    .line 566
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 560
    .end local v0           #arr$:[I
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #sinkState:I
    .end local v6           #sinks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v7           #state:I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 564
    .restart local v0       #arr$:[I
    .restart local v1       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #sinkState:I
    .restart local v6       #sinks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v7       #state:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 571
    .end local v0           #arr$:[I
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #sinkState:I
    .end local v7           #state:I
    :cond_2
    monitor-exit p0

    return-object v6
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 575
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getBluetoothA2dpSinkPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mA2dpState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/server/BluetoothA2dpService;->mA2dpState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothA2dpService;->debugLog(Ljava/lang/String;)V

    .line 1119
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1120
    iput v0, p0, Landroid/server/BluetoothA2dpService;->mA2dpState:I

    .line 1123
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/server/BluetoothA2dpService;->mA2dpState:I

    goto :goto_0
.end method

.method public declared-synchronized isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isA2dpPlaying("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 399
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resumeSink(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 529
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resumeSink("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), mTargetA2dpState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 532
    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 541
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 535
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 537
    .local v1, state:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 540
    const/16 v2, 0xa

    iput v2, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    .line 541
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/server/BluetoothA2dpService;->checkSinkSuspendState(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 529
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #state:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setAudioPathToAudioTrack(Landroid/os/IBinder;)Z
    .locals 5
    .parameter "cb"

    .prologue
    const/4 v2, 0x0

    .line 901
    new-instance v1, Landroid/server/BluetoothA2dpService$FMServiceDeathHandler;

    invoke-direct {v1, p0, p1}, Landroid/server/BluetoothA2dpService$FMServiceDeathHandler;-><init>(Landroid/server/BluetoothA2dpService;Landroid/os/IBinder;)V

    .line 904
    .local v1, hdl:Landroid/server/BluetoothA2dpService$FMServiceDeathHandler;
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p1, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 905
    :catch_0
    move-exception v0

    .line 907
    .local v0, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[a2dp service]setAudioPathToAudioTrack could not link to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " binder death."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 582
    const/4 v0, 0x0

    .line 584
    .local v0, ret:Z
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mPriorityLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 587
    :try_start_0
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getBluetoothA2dpSinkPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 592
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mPriorityLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 594
    return v0

    .line 592
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mPriorityLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public declared-synchronized suspendSink(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7
    .parameter "device"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 503
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    const-string v6, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "suspendSink("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), mTargetA2dpState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/server/BluetoothA2dpService;->mTargetA2dpState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 506
    if-eqz p1, :cond_0

    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 523
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 509
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, path:Ljava/lang/String;
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 511
    .local v1, state:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 517
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 522
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "A2dpSuspended=true"

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 523
    goto :goto_0

    .line 503
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #state:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
