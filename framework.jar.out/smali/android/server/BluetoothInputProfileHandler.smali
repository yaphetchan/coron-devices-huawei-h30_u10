.class final Landroid/server/BluetoothInputProfileHandler;
.super Ljava/lang/Object;
.source "BluetoothInputProfileHandler.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothInputProfileHandler"

.field public static sInstance:Landroid/server/BluetoothInputProfileHandler;


# instance fields
.field private mBluetoothService:Landroid/server/BluetoothService;

.field private mContext:Landroid/content/Context;

.field private final mHidProfileState:Landroid/bluetooth/BluetoothProfileState;

.field private final mInputDevices:Ljava/util/HashMap;
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


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .locals 3
    .parameter "context"
    .parameter "service"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/server/BluetoothInputProfileHandler;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Landroid/server/BluetoothInputProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothInputProfileHandler;->mInputDevices:Ljava/util/HashMap;

    .line 54
    new-instance v0, Landroid/bluetooth/BluetoothProfileState;

    iget-object v1, p0, Landroid/server/BluetoothInputProfileHandler;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothProfileState;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/server/BluetoothInputProfileHandler;->mHidProfileState:Landroid/bluetooth/BluetoothProfileState;

    .line 55
    iget-object v0, p0, Landroid/server/BluetoothInputProfileHandler;->mHidProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 56
    return-void
.end method

.method private static debugLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 221
    const-string v0, "BluetoothInputProfileHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method private static errorLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 225
    const-string v0, "BluetoothInputProfileHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothInputProfileHandler;
    .locals 2
    .parameter "context"
    .parameter "service"

    .prologue
    .line 60
    const-class v1, Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/server/BluetoothInputProfileHandler;->sInstance:Landroid/server/BluetoothInputProfileHandler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/server/BluetoothInputProfileHandler;

    invoke-direct {v0, p0, p1}, Landroid/server/BluetoothInputProfileHandler;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V

    sput-object v0, Landroid/server/BluetoothInputProfileHandler;->sInstance:Landroid/server/BluetoothInputProfileHandler;

    .line 61
    :cond_0
    sget-object v0, Landroid/server/BluetoothInputProfileHandler;->sInstance:Landroid/server/BluetoothInputProfileHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleInputDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 4
    .parameter "device"
    .parameter "state"

    .prologue
    .line 169
    iget-object v2, p0, Landroid/server/BluetoothInputProfileHandler;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 170
    const/4 v1, 0x0

    .line 174
    .local v1, prevState:I
    :goto_0
    if-ne v1, p2, :cond_1

    .line 197
    :goto_1
    return-void

    .line 172
    .end local v1           #prevState:I
    :cond_0
    iget-object v2, p0, Landroid/server/BluetoothInputProfileHandler;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1       #prevState:I
    goto :goto_0

    .line 176
    :cond_1
    iget-object v2, p0, Landroid/server/BluetoothInputProfileHandler;->mInputDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-virtual {p0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_3

    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    .line 184
    :cond_3
    const/16 v2, 0x3e8

    invoke-virtual {p0, p1, v2}, Landroid/server/BluetoothInputProfileHandler;->setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 187
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 189
    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    const-string v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    const/high16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 192
    iget-object v2, p0, Landroid/server/BluetoothInputProfileHandler;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InputDevice state : device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothInputProfileHandler;->debugLog(Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Landroid/server/BluetoothInputProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v3, 0x4

    invoke-virtual {v2, p1, v3, p2, v1}, Landroid/server/BluetoothService;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    goto :goto_1
.end method


# virtual methods
.method connectInputDevice(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDeviceProfileState;)Z
    .locals 5
    .parameter "device"
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 66
    iget-object v3, p0, Landroid/server/BluetoothInputProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, objectPath:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-nez v3, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v2

    .line 72
    :cond_1
    if-eqz p2, :cond_0

    .line 73
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 74
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 75
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 76
    iget-object v2, p0, Landroid/server/BluetoothInputProfileHandler;->mHidProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 77
    const/4 v2, 0x1

    goto :goto_0
.end method

.method connectInputDeviceInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    iget-object v3, p0, Landroid/server/BluetoothInputProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, objectPath:Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Landroid/server/BluetoothInputProfileHandler;->handleInputDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    .line 85
    iget-object v3, p0, Landroid/server/BluetoothInputProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, v0}, Landroid/server/BluetoothService;->connectInputDeviceNative(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothInputProfileHandler;->handleInputDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    .line 89
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method disconnectInputDevice(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDeviceProfileState;)Z
    .locals 5
    .parameter "device"
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v3, p0, Landroid/server/BluetoothInputProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, objectPath:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-nez v3, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v2

    .line 99
    :cond_1
    if-eqz p2, :cond_0

    .line 100
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 101
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x36

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 102
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 103
    iget-object v2, p0, Landroid/server/BluetoothInputProfileHandler;->mHidProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 104
    const/4 v2, 0x1

    goto :goto_0
.end method

.method disconnectInputDeviceInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 110
    iget-object v1, p0, Landroid/server/BluetoothInputProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, objectPath:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothInputProfileHandler;->handleInputDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    .line 112
    iget-object v1, p0, Landroid/server/BluetoothInputProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->disconnectInputDeviceNative(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothInputProfileHandler;->handleInputDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    .line 114
    const/4 v1, 0x0

    .line 116
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method getConnectedInputDevices()Ljava/util/List;
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
    .line 127
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    invoke-virtual {p0, v1}, Landroid/server/BluetoothInputProfileHandler;->lookupInputDevicesMatchingStates([I)Ljava/util/List;

    move-result-object v0

    .line 129
    .local v0, devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    return-object v0
.end method

.method getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/server/BluetoothInputProfileHandler;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 123
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/server/BluetoothInputProfileHandler;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 138
    iget-object v0, p0, Landroid/server/BluetoothInputProfileHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getBluetoothInputDevicePriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getInputDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 1
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
    .line 133
    invoke-virtual {p0, p1}, Landroid/server/BluetoothInputProfileHandler;->lookupInputDevicesMatchingStates([I)Ljava/util/List;

    move-result-object v0

    .line 134
    .local v0, devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    return-object v0
.end method

.method handleInputDevicePropertyChange(Ljava/lang/String;Z)V
    .locals 3
    .parameter "address"
    .parameter "connected"

    .prologue
    .line 200
    if-eqz p2, :cond_0

    const/4 v2, 0x2

    .line 202
    .local v2, state:I
    :goto_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 203
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 204
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v1, v2}, Landroid/server/BluetoothInputProfileHandler;->handleInputDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    .line 205
    return-void

    .line 200
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #state:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method lookupInputDevicesMatchingStates([I)Ljava/util/List;
    .locals 9
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
    .line 153
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v5, inputDevices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v8, p0, Landroid/server/BluetoothInputProfileHandler;->mInputDevices:Ljava/util/HashMap;

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

    .line 156
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothInputProfileHandler;->getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 157
    .local v4, inputDeviceState:I
    move-object v0, p1

    .local v0, arr$:[I
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v6, :cond_0

    aget v7, v0, v3

    .line 158
    .local v7, state:I
    if-ne v7, v4, :cond_1

    .line 159
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 164
    .end local v0           #arr$:[I
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:I
    .end local v4           #inputDeviceState:I
    .end local v6           #len$:I
    .end local v7           #state:I
    :cond_2
    return-object v5
.end method

.method setInitialInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .parameter "device"
    .parameter "state"

    .prologue
    const/4 v1, -0x1

    .line 208
    packed-switch p2, :pswitch_data_0

    .line 218
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 210
    :pswitch_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 211
    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothInputProfileHandler;->setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 215
    :pswitch_2
    invoke-virtual {p0, p1, v1}, Landroid/server/BluetoothInputProfileHandler;->setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 147
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/server/BluetoothInputProfileHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getBluetoothInputDevicePriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method
