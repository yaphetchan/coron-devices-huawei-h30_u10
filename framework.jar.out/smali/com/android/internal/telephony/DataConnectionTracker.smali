.class public abstract Lcom/android/internal/telephony/DataConnectionTracker;
.super Landroid/os/Handler;
.source "DataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataConnectionTracker$3;,
        Lcom/android/internal/telephony/DataConnectionTracker$RecoveryAction;,
        Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;,
        Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;,
        Lcom/android/internal/telephony/DataConnectionTracker$Activity;,
        Lcom/android/internal/telephony/DataConnectionTracker$State;
    }
.end annotation


# static fields
.field public static ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String; = null

.field private static final ACTION_SET_PS_ATTACH_MODE:Ljava/lang/String; = "com.mtk.GPRS.ACTION_SET_PS_ATTACH_MODE"

.field protected static final APN_CBS_ID:I = 0x7

.field protected static final APN_CMMAIL_ID:I = 0xe

.field protected static final APN_DEFAULT_ID:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final APN_DELAY_MILLIS:I = 0x0

.field protected static final APN_DM_ID:I = 0xb

.field protected static final APN_DUN_ID:I = 0x3

.field protected static final APN_FOTA_ID:I = 0x6

.field protected static final APN_HIPRI_ID:I = 0x4

.field protected static final APN_IMS_ID:I = 0x5

.field protected static final APN_INVALID_ID:I = -0x1

.field protected static final APN_MAX_ID:I = 0xf

.field protected static final APN_MMS_ID:I = 0x1

.field protected static final APN_NET_ID:I = 0xd

.field protected static final APN_NUM_TYPES:I = 0x10

.field protected static final APN_RCSE_ID:I = 0xf

.field protected static final APN_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field protected static final APN_SUPL_ID:I = 0x2

.field public static final APN_TYPE_KEY:Ljava/lang/String; = "apnType"

.field protected static final APN_WAP_ID:I = 0xc

.field private static final ATTACH_MODE_NOT_SPECIFY:I = -0x1

.field protected static final BASE:I = 0x42000

.field public static final CMD_SET_DEPENDENCY_MET:I = 0x4201f

.field public static final CMD_SET_POLICY_DATA_ENABLE:I = 0x42020

.field public static final CMD_SET_USER_DATA_ENABLE:I = 0x4201e

.field protected static final DATA_CONNECTION_ACTIVE_PH_LINK_DOWN:I = 0x1

.field protected static final DATA_CONNECTION_ACTIVE_PH_LINK_INACTIVE:I = 0x0

.field protected static final DATA_CONNECTION_ACTIVE_PH_LINK_UP:I = 0x2

.field protected static final DATA_STALL_ALARM_AGGRESSIVE_DELAY_IN_MS_DEFAULT:I = 0xea60

.field protected static final DATA_STALL_ALARM_NON_AGGRESSIVE_DELAY_IN_MS_DEFAULT:I = 0x57e40

.field protected static final DATA_STALL_ALARM_TAG_EXTRA:Ljava/lang/String; = "data.stall.alram.tag"

.field protected static final DATA_STALL_NOT_SUSPECTED:Z = false

.field protected static final DATA_STALL_NO_RECV_POLL_LIMIT:I = 0x1

.field protected static final DATA_STALL_SUSPECTED:Z = true

.field protected static final DBG:Z = true

.field protected static final DEFALUT_DATA_ON_BOOT_PROP:Ljava/lang/String; = "net.def_data_on_boot"

.field protected static final DEFAULT_DATA_RETRY_CONFIG:Ljava/lang/String; = "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

.field protected static final DEFAULT_MAX_PDP_RESET_FAIL:I = 0x3

.field public static final DISABLED:I = 0x0

.field public static final ENABLED:I = 0x1

.field public static EXTRA_MESSENGER:Ljava/lang/String; = null

.field protected static final FAIL_DATA_SETUP_COUNTER:Ljava/lang/String; = "fail_data_setup_counter"

.field protected static final FAIL_DATA_SETUP_FAIL_CAUSE:Ljava/lang/String; = "fail_data_setup_fail_cause"

.field private static final INTENT_RECONNECT_ALARM_APN_TYPE:Ljava/lang/String; = "apnType"

.field protected static final INTENT_RECONNECT_ALARM_EXTRA_REASON:Ljava/lang/String; = "reconnect_alarm_extra_reason"

.field protected static final INTENT_SET_FAIL_DATA_SETUP_COUNTER:Ljava/lang/String; = "com.android.internal.telephony.dataconnectiontracker.intent_set_fail_data_setup_counter"

.field private static final KEY_ATTACH_MODE:Ljava/lang/String; = "attach_mode"

.field protected static final NO_RECV_POLL_LIMIT:I = 0x18

.field protected static final NULL_IP:Ljava/lang/String; = "0.0.0.0"

.field protected static final NUMBER_SENT_PACKETS_OF_HANG:I = 0xa

.field protected static final POLL_LONGEST_RTT:I = 0x1d4c0

.field protected static final POLL_NETSTAT_MILLIS:I = 0x3e8

.field protected static final POLL_NETSTAT_SCREEN_OFF_MILLIS:I = 0x927c0

.field protected static final POLL_NETSTAT_SLOW_MILLIS:I = 0x1388

.field private static final PREFERENCE_GPRS:Ljava/lang/String; = "com.mtk.GPRS"

.field private static final PREF_ATTACH_MODE:Ljava/lang/String; = "ATTACH_MODE"

.field private static final PREF_ATTACH_MODE_SIM:Ljava/lang/String; = "ATTACH_MODE_SIM"

.field protected static final PROPERTY_3G_SWITCH:Ljava/lang/String; = "gsm.3gswitch"

.field protected static final PROPERTY_RIL_FD_MODE:Ljava/lang/String; = "ril.fd.mode"

.field protected static final RADIO_TESTS:Z = false

.field protected static final RESTORE_DEFAULT_APN_DELAY:I = 0xea60

.field protected static final SECONDARY_DATA_RETRY_CONFIG:Ljava/lang/String; = "max_retries=3, 5000, 5000, 5000"

.field protected static final VDBG:Z = true

.field private static final mRoamingSetting:[Ljava/lang/String;

.field protected static sPolicyDataEnabled:Z


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field protected RADIO_RESET_PROPERTY:Ljava/lang/String;

.field protected dataEnabled:[Z

.field protected enabledCount:I

.field protected mActiveApn:Lcom/android/internal/telephony/ApnSetting;

.field protected mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

.field protected mAllApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field protected mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/ApnContext;",
            ">;"
        }
    .end annotation
.end field

.field protected mApnToDataConnectionId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mAutoAttachOnCreation:Z

.field protected mChargingMode:Z

.field private mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

.field private mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

.field protected mCidActive:I

.field protected mDataConnectionAsyncChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/DataConnectionAc;",
            ">;"
        }
    .end annotation
.end field

.field protected mDataConnectionTracker:Landroid/os/Handler;

.field protected mDataConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field protected mDataEnabledLock:Ljava/lang/Object;

.field private final mDataRoamingSettingObserver:Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;

.field protected mDataStallAlarmIntent:Landroid/app/PendingIntent;

.field protected mDataStallAlarmTag:I

.field protected mDataStallTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

.field protected mEnableFDOnCharing:I

.field protected mFailDataSetupCounter:I

.field protected mFailDataSetupFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

.field protected mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/android/internal/telephony/IccRecords;",
            ">;"
        }
    .end annotation
.end field

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mInternalDataEnabled:Z

.field protected mIsDisposed:Z

.field protected mIsPsRestricted:Z

.field protected mIsScreenOn:Z

.field protected mIsWifiConnected:Z

.field protected mNetStatPollEnabled:Z

.field protected mNetStatPollPeriod:I

.field protected mNoRecvPollCount:I

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPollNetStat:Ljava/lang/Runnable;

.field protected mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

.field protected mRadioAvailable:Z

.field protected mReconnectIntent:Landroid/app/PendingIntent;

.field protected mRecordsLoaded:Z

.field protected mRequestedApnType:Ljava/lang/String;

.field protected mResolver:Landroid/content/ContentResolver;

.field protected mRxPkts:J

.field protected mSentSinceLastRecv:J

.field protected mState:Lcom/android/internal/telephony/DctConstants$State;

.field protected mTxPkts:J

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field protected mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mUserDataEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 147
    const-string v0, "com.android.internal.telephony"

    sput-object v0, Lcom/android/internal/telephony/DataConnectionTracker;->ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String;

    .line 149
    const-string v0, "EXTRA_MESSENGER"

    sput-object v0, Lcom/android/internal/telephony/DataConnectionTracker;->EXTRA_MESSENGER:Ljava/lang/String;

    .line 186
    const-string/jumbo v0, "persist.radio.apn_delay"

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/DataConnectionTracker;->APN_DELAY_MILLIS:I

    .line 201
    sput-boolean v3, Lcom/android/internal/telephony/DataConnectionTracker;->sPolicyDataEnabled:Z

    .line 378
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data_roaming"

    aput-object v2, v0, v1

    const-string v1, "data_roaming_2"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "data_roaming_3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data_roaming_4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/DataConnectionTracker;->mRoamingSetting:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 12
    .parameter "phone"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 759
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 189
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    .line 193
    iput-boolean v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    .line 198
    iput-boolean v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    .line 203
    const/16 v0, 0x10

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    .line 205
    iput v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    .line 208
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 256
    const-string v0, "gsm.radioreset"

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->RADIO_RESET_PROPERTY:Ljava/lang/String;

    .line 275
    iput v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupCounter:I

    .line 277
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 284
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    .line 285
    sget-object v0, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 286
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    .line 287
    iput-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    .line 290
    iput-boolean v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRadioAvailable:Z

    .line 291
    iput-boolean v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRecordsLoaded:Z

    .line 296
    iput-boolean v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    .line 298
    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;JJ)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallAlarmTag:I

    .line 302
    iput-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 306
    iput v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    .line 309
    iput-boolean v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    .line 312
    iput-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 318
    iput-boolean v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAutoAttachOnCreation:Z

    .line 323
    iput-boolean v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsScreenOn:Z

    .line 326
    iput-boolean v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChargingMode:Z

    .line 327
    iput v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mEnableFDOnCharing:I

    .line 330
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 333
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    .line 337
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    .line 341
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnToDataConnectionId:Ljava/util/HashMap;

    .line 345
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    .line 352
    iput-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    .line 355
    iput-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 358
    iput-boolean v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsPsRestricted:Z

    .line 361
    iput-boolean v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsDisposed:Z

    .line 366
    const-string v0, "DataConnectionTracker"

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    .line 369
    iput-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    .line 370
    new-instance v0, Lcom/huawei/device/chrlog/ChrLogModel;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/ChrLogModel;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    .line 392
    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/DataConnectionTracker$1;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 568
    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/DataConnectionTracker$2;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    .line 760
    const-string v0, "DCT.constructor"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 761
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 762
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 763
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const v1, 0x42021

    invoke-virtual {v0, p0, v1, v11}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 765
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 766
    .local v7, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getActionIntentReconnectAlarm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 767
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 768
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 769
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 770
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 771
    const-string v0, "com.android.internal.telephony.dataconnectiontracker.intent_set_fail_data_setup_counter"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getActionIntentDataStallAlarm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 775
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mobile_data"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_1

    move v0, v9

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    .line 782
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1, v7, v11, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 789
    const-string/jumbo v0, "net.def_data_on_boot"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 790
    .local v6, dataOnBoot:Z
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    if-eqz v6, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    if-eqz v0, :cond_2

    move v0, v9

    :goto_1
    aput-boolean v0, v1, v10

    .line 792
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v0, v0, v10

    if-eqz v0, :cond_0

    .line 793
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 797
    .local v8, sp:Landroid/content/SharedPreferences;
    const-string v0, "disabled_on_boot_key"

    invoke-interface {v8, v0, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAutoAttachOnCreation:Z

    .line 800
    iput-boolean v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAutoAttachOnCreation:Z

    .line 804
    const-string v0, "DataConnectionTracker(): sync roaming setting"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 805
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->syncRoamingSetting()V

    .line 808
    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;

    .line 809
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;->register(Landroid/content/Context;)V

    .line 811
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    .line 812
    return-void

    .end local v6           #dataOnBoot:Z
    .end local v8           #sp:Landroid/content/SharedPreferences;
    :cond_1
    move v0, v10

    .line 777
    goto :goto_0

    .restart local v6       #dataOnBoot:Z
    :cond_2
    move v0, v10

    .line 790
    goto :goto_1
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker;->mRoamingSetting:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/DataConnectionTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->handleDataOnRoamingChange()V

    return-void
.end method

.method private getRecoveryAction(I)Ljava/lang/String;
    .locals 1
    .parameter "recoveryAction"

    .prologue
    .line 2020
    packed-switch p1, :pswitch_data_0

    .line 2032
    const-string v0, ""

    :goto_0
    return-object v0

    .line 2022
    :pswitch_0
    const-string v0, "GET_DATA_CALL_LIST"

    goto :goto_0

    .line 2024
    :pswitch_1
    const-string v0, "CLEANUP"

    goto :goto_0

    .line 2026
    :pswitch_2
    const-string v0, "REREGISTER"

    goto :goto_0

    .line 2028
    :pswitch_3
    const-string v0, "RADIO_RESTART"

    goto :goto_0

    .line 2030
    :pswitch_4
    const-string v0, "RADIO_RESTART_WITH_PROP"

    goto :goto_0

    .line 2020
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleDataOnRoamingChange()V
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 931
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->resetAllRetryCounts()V

    .line 934
    :cond_0
    const v0, 0x4200b

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 936
    :cond_1
    return-void
.end method

.method private notifyApnIdDisconnected(Ljava/lang/String;I)V
    .locals 3
    .parameter "reason"
    .parameter "apnId"

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 1258
    return-void
.end method

.method private notifyApnIdUpToCurrent(Ljava/lang/String;I)V
    .locals 3
    .parameter "reason"
    .parameter "apnId"

    .prologue
    .line 1239
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$3;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1253
    :goto_0
    :pswitch_0
    return-void

    .line 1245
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    goto :goto_0

    .line 1249
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 1250
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    goto :goto_0

    .line 1239
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private setPDPEventInfo(Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;I)V
    .locals 2
    .parameter "cPACKET_SERVICE_PDP_EVENT"
    .parameter "reason"

    .prologue
    .line 2087
    if-eqz p1, :cond_1

    .line 2088
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v0, :cond_0

    .line 2089
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    .line 2090
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->iLAC:Lcom/huawei/device/chrlog/LogInt;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getLac()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogInt;->setValue(I)V

    .line 2091
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->iRAC:Lcom/huawei/device/chrlog/LogInt;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getRac()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogInt;->setValue(I)V

    .line 2092
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->iCellID:Lcom/huawei/device/chrlog/LogInt;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getCid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogInt;->setValue(I)V

    .line 2093
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->usTAC:Lcom/huawei/device/chrlog/LogShort;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getTac()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogShort;->setValue(I)V

    .line 2094
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->iECI:Lcom/huawei/device/chrlog/LogInt;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getEci()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogInt;->setValue(I)V

    .line 2106
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getChrFileHead()Lcom/huawei/device/chrlog/CSegFILEHEAD;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/device/chrlog/ChrLogModel;->chrLogFileHeadModel:Lcom/huawei/device/chrlog/CSegFILEHEAD;

    .line 2107
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getChrComHead()Lcom/huawei/device/chrlog/CSegCOMHEAD;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/device/chrlog/ChrLogModel;->chrLogComHeadModel:Lcom/huawei/device/chrlog/CSegCOMHEAD;

    .line 2108
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->ucCardIndex:Lcom/huawei/device/chrlog/LogByte;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogByte;->setValue(I)V

    .line 2109
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->tmTimeStamp:Lcom/huawei/device/chrlog/LogDate;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogDate;->setValue(Ljava/util/Date;)V

    .line 2110
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->enNetworkRAT:Lcom/huawei/device/chrlog/ENCNetworkRAT;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getNetworkRAT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/ENCNetworkRAT;->setValue(Ljava/lang/String;)V

    .line 2111
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->ucSignalStrength:Lcom/huawei/device/chrlog/LogByte;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getSignalStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogByte;->setValue(I)V

    .line 2112
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->ucSignalQuality:Lcom/huawei/device/chrlog/LogByte;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getSignalQuality()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogByte;->setValue(I)V

    .line 2113
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->usMCC:Lcom/huawei/device/chrlog/LogShort;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getMCC()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogShort;->setValue(I)V

    .line 2114
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->usMNC:Lcom/huawei/device/chrlog/LogShort;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getMNC()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogShort;->setValue(I)V

    .line 2115
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->getPDPFailComm(Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;I)V

    .line 2119
    :cond_0
    :goto_0
    return-void

    .line 2117
    :cond_1
    const-string v0, "g00129682 cPACKET_SERVICE_PDP_EVENT==null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setRecoveryEventInfo(Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;I)V
    .locals 2
    .parameter "cPACKET_SERVICE_RECOVERY_EVENT"
    .parameter "recoveryAction"

    .prologue
    .line 2121
    if-eqz p1, :cond_0

    .line 2122
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v0, :cond_0

    .line 2123
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/gsm/GsmPhoneChrCommonInfo;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    .line 2124
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->iLAC:Lcom/huawei/device/chrlog/LogInt;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getLac()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogInt;->setValue(I)V

    .line 2125
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->iRAC:Lcom/huawei/device/chrlog/LogInt;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getRac()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogInt;->setValue(I)V

    .line 2126
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->iCellID:Lcom/huawei/device/chrlog/LogInt;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getCid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogInt;->setValue(I)V

    .line 2127
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->usTAC:Lcom/huawei/device/chrlog/LogShort;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getTac()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogShort;->setValue(I)V

    .line 2128
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->iECI:Lcom/huawei/device/chrlog/LogInt;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getEci()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogInt;->setValue(I)V

    .line 2141
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getChrFileHead()Lcom/huawei/device/chrlog/CSegFILEHEAD;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/device/chrlog/ChrLogModel;->chrLogFileHeadModel:Lcom/huawei/device/chrlog/CSegFILEHEAD;

    .line 2142
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getChrComHead()Lcom/huawei/device/chrlog/CSegCOMHEAD;

    move-result-object v1

    iput-object v1, v0, Lcom/huawei/device/chrlog/ChrLogModel;->chrLogComHeadModel:Lcom/huawei/device/chrlog/CSegCOMHEAD;

    .line 2143
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->ucCardIndex:Lcom/huawei/device/chrlog/LogByte;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogByte;->setValue(I)V

    .line 2144
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->tmTimeStamp:Lcom/huawei/device/chrlog/LogDate;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogDate;->setValue(Ljava/util/Date;)V

    .line 2145
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->enNetworkRAT:Lcom/huawei/device/chrlog/ENCNetworkRAT;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getNetworkRAT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/ENCNetworkRAT;->setValue(Ljava/lang/String;)V

    .line 2146
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->ucSignalStrength:Lcom/huawei/device/chrlog/LogByte;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getSignalStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogByte;->setValue(I)V

    .line 2147
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->ucSignalQuality:Lcom/huawei/device/chrlog/LogByte;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getSignalQuality()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogByte;->setValue(I)V

    .line 2148
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->usMCC:Lcom/huawei/device/chrlog/LogShort;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getMCC()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogShort;->setValue(I)V

    .line 2149
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->usMNC:Lcom/huawei/device/chrlog/LogShort;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrComInfo:Lcom/android/internal/telephony/ChrCommonInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ChrCommonInfo;->getMNC()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogShort;->setValue(I)V

    .line 2150
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->getDoRecoveryComm(Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;I)V

    .line 2152
    :cond_0
    return-void
.end method

.method private updateDataStallInfo()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const-wide/16 v9, 0x0

    .line 1748
    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

    invoke-direct {v0, p0, v5}, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;)V

    .line 1749
    .local v0, preTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->updateTxRxSum()V

    .line 1752
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateDataStallInfo: mDataStallTxRxSum="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " preTxRxSum="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1756
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

    iget-wide v5, v5, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->txPkts:J

    iget-wide v7, v0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->txPkts:J

    sub-long v3, v5, v7

    .line 1757
    .local v3, sent:J
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

    iget-wide v5, v5, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->rxPkts:J

    iget-wide v7, v0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->rxPkts:J

    sub-long v1, v5, v7

    .line 1765
    .local v1, received:J
    cmp-long v5, v3, v9

    if-lez v5, :cond_0

    cmp-long v5, v1, v9

    if-lez v5, :cond_0

    .line 1766
    const-string/jumbo v5, "updateDataStallInfo: IN/OUT"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1767
    iput-wide v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    .line 1768
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/DataConnectionTracker;->putRecoveryAction(I)V

    .line 1786
    :goto_0
    return-void

    .line 1769
    :cond_0
    cmp-long v5, v3, v9

    if-lez v5, :cond_2

    cmp-long v5, v1, v9

    if-nez v5, :cond_2

    .line 1770
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v6, :cond_1

    .line 1771
    iget-wide v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    .line 1776
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateDataStallInfo: OUT sent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mSentSinceLastRecv="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1773
    :cond_1
    iput-wide v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    goto :goto_1

    .line 1779
    :cond_2
    cmp-long v5, v3, v9

    if-nez v5, :cond_3

    cmp-long v5, v1, v9

    if-lez v5, :cond_3

    .line 1780
    const-string/jumbo v5, "updateDataStallInfo: IN"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1781
    iput-wide v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    .line 1782
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/DataConnectionTracker;->putRecoveryAction(I)V

    goto :goto_0

    .line 1784
    :cond_3
    const-string/jumbo v5, "updateDataStallInfo: NONE"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected apnIdToType(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 1163
    packed-switch p1, :pswitch_data_0

    .line 1191
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown id ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in apnIdToType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1192
    const-string v0, "default"

    :goto_0
    return-object v0

    .line 1165
    :pswitch_1
    const-string v0, "default"

    goto :goto_0

    .line 1167
    :pswitch_2
    const-string/jumbo v0, "mms"

    goto :goto_0

    .line 1169
    :pswitch_3
    const-string/jumbo v0, "supl"

    goto :goto_0

    .line 1171
    :pswitch_4
    const-string v0, "dun"

    goto :goto_0

    .line 1173
    :pswitch_5
    const-string v0, "hipri"

    goto :goto_0

    .line 1175
    :pswitch_6
    const-string v0, "ims"

    goto :goto_0

    .line 1177
    :pswitch_7
    const-string v0, "fota"

    goto :goto_0

    .line 1179
    :pswitch_8
    const-string v0, "cbs"

    goto :goto_0

    .line 1181
    :pswitch_9
    const-string v0, "dm"

    goto :goto_0

    .line 1183
    :pswitch_a
    const-string/jumbo v0, "net"

    goto :goto_0

    .line 1185
    :pswitch_b
    const-string/jumbo v0, "wap"

    goto :goto_0

    .line 1187
    :pswitch_c
    const-string v0, "cmmail"

    goto :goto_0

    .line 1189
    :pswitch_d
    const-string/jumbo v0, "rcse"

    goto :goto_0

    .line 1163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method protected apnTypeToId(Ljava/lang/String;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 1131
    const-string v0, "default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1132
    const/4 v0, 0x0

    .line 1158
    :goto_0
    return v0

    .line 1133
    :cond_0
    const-string/jumbo v0, "mms"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1134
    const/4 v0, 0x1

    goto :goto_0

    .line 1135
    :cond_1
    const-string/jumbo v0, "supl"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1136
    const/4 v0, 0x2

    goto :goto_0

    .line 1137
    :cond_2
    const-string v0, "dun"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1138
    const/4 v0, 0x3

    goto :goto_0

    .line 1139
    :cond_3
    const-string v0, "hipri"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1140
    const/4 v0, 0x4

    goto :goto_0

    .line 1141
    :cond_4
    const-string v0, "ims"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1142
    const/4 v0, 0x5

    goto :goto_0

    .line 1143
    :cond_5
    const-string v0, "fota"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1144
    const/4 v0, 0x6

    goto :goto_0

    .line 1145
    :cond_6
    const-string v0, "cbs"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1146
    const/4 v0, 0x7

    goto :goto_0

    .line 1147
    :cond_7
    const-string v0, "dm"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1148
    const/16 v0, 0xb

    goto :goto_0

    .line 1149
    :cond_8
    const-string/jumbo v0, "net"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1150
    const/16 v0, 0xd

    goto :goto_0

    .line 1151
    :cond_9
    const-string/jumbo v0, "wap"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1152
    const/16 v0, 0xc

    goto :goto_0

    .line 1153
    :cond_a
    const-string v0, "cmmail"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1154
    const/16 v0, 0xe

    goto :goto_0

    .line 1155
    :cond_b
    const-string/jumbo v0, "rcse"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1156
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 1158
    :cond_c
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method protected broadcastMessenger()V
    .locals 3

    .prologue
    .line 827
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/internal/telephony/DctConstants;->ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 828
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/telephony/DctConstants;->EXTRA_MESSENGER:Ljava/lang/String;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 829
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 830
    return-void
.end method

.method public cleanUpAllConnections(Ljava/lang/String;)V
    .locals 2
    .parameter "cause"

    .prologue
    .line 1496
    const v1, 0x4201d

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1497
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1498
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1499
    return-void
.end method

.method public declared-synchronized disableApnType(Ljava/lang/String;)I
    .locals 6
    .parameter "type"

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1334
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableApnType("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1336
    .local v0, id:I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 1351
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 1339
    :cond_1
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1340
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->setEnabled(IZ)V

    .line 1341
    const-string v1, "default"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1342
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v4, 0x0

    aget-boolean v1, v1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    move v1, v2

    .line 1343
    goto :goto_0

    :cond_2
    move v1, v3

    .line 1345
    goto :goto_0

    :cond_3
    move v1, v3

    .line 1348
    goto :goto_0

    .line 1334
    .end local v0           #id:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 815
    const-string v2, "DCT.dispose"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 816
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 817
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->disconnect()V

    goto :goto_0

    .line 819
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 820
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsDisposed:Z

    .line 821
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 822
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;->unregister(Landroid/content/Context;)V

    .line 823
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 824
    return-void
.end method

.method protected doRecovery()V
    .locals 4

    .prologue
    .line 1686
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v2, :cond_0

    .line 1688
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getRecoveryAction()I

    move-result v0

    .line 1691
    .local v0, recoveryAction:I
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->setPacketRecoveryEvent(I)V

    .line 1693
    packed-switch v0, :pswitch_data_0

    .line 1739
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doRecovery: Invalid recoveryAction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1695
    :pswitch_0
    const v1, 0xc3c6

    iget-wide v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1697
    const-string v1, "doRecovery() get data call list"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1698
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v2, 0x42004

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 1699
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->putRecoveryAction(I)V

    .line 1743
    .end local v0           #recoveryAction:I
    :cond_0
    :goto_0
    return-void

    .line 1702
    .restart local v0       #recoveryAction:I
    :pswitch_1
    const v1, 0xc3c7

    iget-wide v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1703
    const-string v1, "doRecovery() cleanup all connections"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1704
    const-string/jumbo v1, "pdpReset"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 1705
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->putRecoveryAction(I)V

    goto :goto_0

    .line 1708
    :pswitch_2
    const v1, 0xc3c8

    iget-wide v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1710
    const-string v1, "doRecovery() re-register"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1711
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    .line 1712
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->putRecoveryAction(I)V

    goto :goto_0

    .line 1715
    :pswitch_3
    const v1, 0xc3c9

    iget-wide v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1717
    const-string/jumbo v1, "restarting radio"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1718
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->putRecoveryAction(I)V

    .line 1719
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->restartRadio()V

    goto :goto_0

    .line 1728
    :pswitch_4
    const v1, 0xc3ca

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1729
    const-string/jumbo v1, "restarting radio with gsm.radioreset to true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1730
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->RADIO_RESET_PROPERTY:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1735
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->restartRadio()V

    .line 1736
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->putRecoveryAction(I)V

    goto :goto_0

    .line 1734
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1693
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1886
    const-string v8, "DataConnectionTracker:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1887
    const-string v8, " RADIO_TESTS=false"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1888
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mInternalDataEnabled="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1889
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mUserDataEnabled="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1890
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " sPolicyDataEnabed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/internal/telephony/DataConnectionTracker;->sPolicyDataEnabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1891
    const-string v8, " dataEnabled:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1892
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    array-length v8, v8

    if-ge v3, v8, :cond_0

    .line 1893
    const-string v8, "  dataEnabled[%d]=%b\n"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v11, v11, v3

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p2, v8, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1892
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1895
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1896
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " enabledCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1897
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mRequestedApnType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1898
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mPhone="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1899
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mActivity="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1900
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1901
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mTxPkts="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mTxPkts:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1902
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mRxPkts="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRxPkts:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1903
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mNetStatPollPeriod="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollPeriod:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1904
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mNetStatPollEnabled="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1905
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mDataStallTxRxSum="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1906
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mDataStallAlarmTag="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallAlarmTag:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1907
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mSentSinceLastRecv="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1908
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mNoRecvPollCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1909
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mResolver="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1910
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mIsWifiConnected="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1911
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mReconnectIntent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1912
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mCidActive="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCidActive:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1913
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mAutoAttachOnCreation="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAutoAttachOnCreation:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1914
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mIsScreenOn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsScreenOn:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1915
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mUniqueIdGenerator="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1916
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1917
    const-string v8, " ***************************************"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1918
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    .line 1919
    .local v7, mDcSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/DataConnection;>;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mDataConnections: count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1920
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1921
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/DataConnection;>;"
    const-string v8, " *** mDataConnection[%d] \n"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p2, v8, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1922
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8, p1, p2, p3}, Lcom/android/internal/telephony/DataConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1

    .line 1924
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/DataConnection;>;"
    :cond_1
    const-string v8, " ***************************************"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1925
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1926
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnToDataConnectionId:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 1927
    .local v6, mApnToDcIdSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mApnToDataConnectonId size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1928
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1929
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v8, " mApnToDataConnectonId[%s]=%d\n"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p2, v8, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_2

    .line 1931
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    const-string v8, " ***************************************"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1932
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1933
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v8, :cond_4

    .line 1934
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 1935
    .local v5, mApnContextsSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/ApnContext;>;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mApnContexts size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1936
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1937
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/ApnContext;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/ApnContext;

    invoke-virtual {v8, p1, p2, p3}, Lcom/android/internal/telephony/ApnContext;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_3

    .line 1939
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/ApnContext;>;"
    :cond_3
    const-string v8, " ***************************************"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1943
    .end local v5           #mApnContextsSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/ApnContext;>;>;"
    :goto_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1944
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mActiveApn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1945
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v8, :cond_6

    .line 1946
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mAllApns size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1947
    const/4 v3, 0x0

    :goto_5
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_5

    .line 1948
    const-string v8, " mAllApns[%d]: %s\n"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p2, v8, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1947
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1941
    :cond_4
    const-string v8, " mApnContexts=null"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 1950
    :cond_5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1954
    :goto_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mPreferredApn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1955
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mIsPsRestricted="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1956
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mIsDisposed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsDisposed:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1957
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mIntentReceiver="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1958
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mDataRoamingSettingObserver="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1959
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1960
    return-void

    .line 1952
    :cond_6
    const-string v8, " mAllApns=null"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method public declared-synchronized enableApnType(Ljava/lang/String;)I
    .locals 4
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 1296
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1297
    .local v0, id:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1298
    const/4 v1, 0x3

    .line 1316
    :goto_0
    monitor-exit p0

    return v1

    .line 1302
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableApnType("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), isApnTypeActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isApnIdEnabled ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1306
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1307
    const-string/jumbo v1, "type not available"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1308
    const/4 v1, 0x2

    goto :goto_0

    .line 1311
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1312
    const/4 v1, 0x0

    goto :goto_0

    .line 1314
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->setEnabled(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1296
    .end local v0           #id:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected fetchDunApn()Lcom/android/internal/telephony/ApnSetting;
    .locals 5

    .prologue
    .line 848
    const-string/jumbo v3, "net.tethering.noprovisioning"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 849
    const-string v3, "fetchDunApn: net.tethering.noprovisioning=true ret: null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 850
    const/4 v2, 0x0

    .line 864
    :goto_0
    return-object v2

    .line 852
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 853
    .local v1, c:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "tether_dun_apn"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 855
    .local v0, apnData:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/ApnSetting;->fromString(Ljava/lang/String;)Lcom/android/internal/telephony/ApnSetting;

    move-result-object v2

    .line 856
    .local v2, dunSetting:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v2, :cond_1

    .line 857
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchDunApn: global TETHER_DUN_APN dunSetting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 861
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 862
    invoke-static {v0}, Lcom/android/internal/telephony/ApnSetting;->fromString(Ljava/lang/String;)Lcom/android/internal/telephony/ApnSetting;

    move-result-object v2

    .line 863
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchDunApn: config_tether_apndata dunSetting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract getActionIntentDataStallAlarm()Ljava/lang/String;
.end method

.method protected abstract getActionIntentReconnectAlarm()Ljava/lang/String;
.end method

.method public getActiveApnString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "apnType"

    .prologue
    .line 880
    const/4 v0, 0x0

    .line 881
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v1, :cond_0

    .line 882
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v0, v1, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    .line 884
    :cond_0
    return-object v0
.end method

.method public abstract getActiveApnType()Ljava/lang/String;
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 869
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v1, :cond_0

    .line 870
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v0, v1, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    .line 875
    .local v0, result:[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 872
    .end local v0           #result:[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 873
    .restart local v0       #result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "default"

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public getActivity()Lcom/android/internal/telephony/DctConstants$Activity;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    return-object v0
.end method

.method public getAnyDataEnabled()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1109
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1110
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "mobile_data"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    .line 1112
    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/internal/telephony/DataConnectionTracker;->sPolicyDataEnabled:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string/jumbo v4, "mms"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v4, 0x1

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_3

    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    if-eqz v2, :cond_3

    .line 1116
    .local v0, result:Z
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1117
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAnyDataEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1118
    :cond_1
    return v0

    .end local v0           #result:Z
    :cond_2
    move v2, v1

    .line 1110
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1112
    goto :goto_1

    .line 1116
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getDataConnectionFromSetting()I
    .locals 4

    .prologue
    .line 1964
    const/4 v0, -0x1

    .line 1967
    .local v0, currentDataConnectionSimId:I
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gprs_connection_setting"

    const/4 v3, -0x4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 1969
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default Data Setting value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 1971
    return v0
.end method

.method public getDataOnRoamingEnabled()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 915
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v1

    .line 917
    .local v1, simId:I
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 919
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker;->mRoamingSetting:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    .line 925
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return v3

    .line 924
    :catch_0
    move-exception v2

    .line 925
    .local v2, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public getDoRecoveryComm(Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;I)V
    .locals 2
    .parameter "RecoveryEvent"
    .parameter "recoveryAction"

    .prologue
    .line 2052
    if-eqz p1, :cond_0

    .line 2053
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->ucPSLostCause:Lcom/huawei/device/chrlog/LogByte;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogByte;->setValue(I)V

    .line 2054
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->enIsPDPActFail:Lcom/huawei/device/chrlog/ENCIsPDPActFail;

    const-string v1, "NO"

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/ENCIsPDPActFail;->setValue(Ljava/lang/String;)V

    .line 2056
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->enIsRecovery:Lcom/huawei/device/chrlog/ENCIsRecovery;

    const-string v1, "YES"

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/ENCIsRecovery;->setValue(Ljava/lang/String;)V

    .line 2057
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->enRecoveryAction:Lcom/huawei/device/chrlog/ENCRecoveryAction;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->getRecoveryAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/ENCRecoveryAction;->setValue(Ljava/lang/String;)V

    .line 2058
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->enIsDeactExceptionAction:Lcom/huawei/device/chrlog/ENCIsDeactExceptionAction;

    const-string v1, "NO"

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/ENCIsDeactExceptionAction;->setValue(Ljava/lang/String;)V

    .line 2060
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->enIsTxFail:Lcom/huawei/device/chrlog/ENCIsTxFail;

    const-string v1, "NO"

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/ENCIsTxFail;->setValue(Ljava/lang/String;)V

    .line 2063
    :cond_0
    return-void
.end method

.method public getFDTimerValue()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1998
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
    .locals 4
    .parameter "apnType"

    .prologue
    .line 1214
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    .line 1215
    .local v1, id:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1217
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 1218
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkCapabilitiesSync()Landroid/net/LinkCapabilities;

    move-result-object v2

    .line 1220
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/net/LinkCapabilities;

    invoke-direct {v2}, Landroid/net/LinkCapabilities;-><init>()V

    goto :goto_0
.end method

.method protected getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 4
    .parameter "apnType"

    .prologue
    .line 1202
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    .line 1204
    .local v1, id:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1206
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 1207
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v2

    .line 1209
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    goto :goto_0
.end method

.method protected abstract getOverallState()Lcom/android/internal/telephony/DctConstants$State;
.end method

.method public getPDPFailComm(Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;I)V
    .locals 2
    .parameter "PDPFailEvent"
    .parameter "PDPFailreason"

    .prologue
    .line 2036
    if-eqz p1, :cond_0

    .line 2037
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->ucPSLostCause:Lcom/huawei/device/chrlog/LogByte;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/LogByte;->setValue(I)V

    .line 2038
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->enIsPDPActFail:Lcom/huawei/device/chrlog/ENCIsPDPActFail;

    const-string v1, "YES"

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/ENCIsPDPActFail;->setValue(Ljava/lang/String;)V

    .line 2039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "g00129682 PDPFailEvent PDPFailreason=  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 2040
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->ucSetupFailureReason:Lcom/huawei/device/chrlog/LogByte;

    invoke-virtual {v0, p2}, Lcom/huawei/device/chrlog/LogByte;->setValue(I)V

    .line 2041
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->enIsRecovery:Lcom/huawei/device/chrlog/ENCIsRecovery;

    const-string v1, "NO"

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/ENCIsRecovery;->setValue(Ljava/lang/String;)V

    .line 2043
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->enIsDeactExceptionAction:Lcom/huawei/device/chrlog/ENCIsDeactExceptionAction;

    const-string v1, "NO"

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/ENCIsDeactExceptionAction;->setValue(Ljava/lang/String;)V

    .line 2045
    iget-object v0, p1, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;->enIsTxFail:Lcom/huawei/device/chrlog/ENCIsTxFail;

    const-string v1, "NO"

    invoke-virtual {v0, v1}, Lcom/huawei/device/chrlog/ENCIsTxFail;->setValue(Ljava/lang/String;)V

    .line 2050
    :goto_0
    return-void

    .line 2048
    :cond_0
    const-string v0, "g00129682 PDPFailEvent==null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRecoveryAction()I
    .locals 4

    .prologue
    .line 1670
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "radio.data.stall.recovery.action"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1672
    .local v0, action:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecoveryAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1673
    return v0
.end method

.method protected getReryConfig(Z)Ljava/lang/String;
    .locals 2
    .parameter "forDefault"

    .prologue
    .line 1560
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getNetworkType()I

    move-result v0

    .line 1562
    .local v0, nt:I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 1569
    :cond_0
    const-string/jumbo v1, "ro.cdma.data_retry_config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1575
    :goto_0
    return-object v1

    .line 1572
    :cond_1
    if-eqz p1, :cond_2

    .line 1573
    const-string/jumbo v1, "ro.gsm.data_retry_config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1575
    :cond_2
    const-string/jumbo v1, "ro.gsm.2nd_data_retry_config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/DctConstants$State;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    return-object v0
.end method

.method public abstract getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;
.end method

.method protected abstract gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 978
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 1096
    const-string v8, "DATA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unidentified event msg="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :cond_0
    :goto_0
    return-void

    .line 980
    :sswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DISCONNECTED_CONNECTED: msg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 981
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/DataConnectionAc;

    .line 982
    .local v3, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    iget-object v9, v3, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v9}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionAc;->disconnected()V

    goto :goto_0

    .line 987
    .end local v3           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :sswitch_1
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/telephony/DataConnectionTracker;->onEnableApn(II)V

    goto :goto_0

    .line 991
    :sswitch_2
    const/4 v6, 0x0

    .line 992
    .local v6, reason:Ljava/lang/String;
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 993
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v6           #reason:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 995
    .restart local v6       #reason:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    goto :goto_0

    .line 999
    .end local v6           #reason:Ljava/lang/String;
    :sswitch_3
    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/DataConnectionTracker;->onDataStallAlarm(I)V

    goto :goto_0

    .line 1003
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1004
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->resetAllRetryCounts()V

    .line 1006
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRoamingOff()V

    goto :goto_0

    .line 1010
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRoamingOn()V

    goto :goto_0

    .line 1014
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRadioAvailable()V

    goto :goto_0

    .line 1018
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRadioOffOrNotAvailable()V

    goto :goto_0

    .line 1022
    :sswitch_8
    iget v8, p1, Landroid/os/Message;->arg1:I

    iput v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCidActive:I

    .line 1023
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/DataConnectionTracker;->onDataSetupComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1027
    :sswitch_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DataConnectoinTracker.handleMessage: EVENT_DISCONNECT_DONE msg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1028
    iget v9, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {p0, v9, v8}, Lcom/android/internal/telephony/DataConnectionTracker;->onDisconnectDone(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1032
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onVoiceCallStarted()V

    goto/16 :goto_0

    .line 1036
    :sswitch_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onVoiceCallEnded()V

    goto/16 :goto_0

    .line 1040
    :sswitch_c
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpAllConnections(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1044
    :sswitch_d
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-nez v9, :cond_3

    .line 1045
    .local v7, tearDown:Z
    :goto_1
    iget v9, p1, Landroid/os/Message;->arg2:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v7, v9, v8}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpConnection(ZILjava/lang/String;)V

    goto/16 :goto_0

    .end local v7           #tearDown:Z
    :cond_3
    move v7, v8

    .line 1044
    goto :goto_1

    .line 1049
    :sswitch_e
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v8, :cond_4

    move v4, v8

    .line 1050
    .local v4, enabled:Z
    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->onSetInternalDataEnabled(Z)V

    goto/16 :goto_0

    .end local v4           #enabled:Z
    :cond_4
    move v4, v7

    .line 1049
    goto :goto_2

    .line 1054
    :sswitch_f
    const-string v8, "EVENT_RESET_DONE"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1055
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/DataConnectionTracker;->onResetDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1059
    :sswitch_10
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v8, :cond_5

    move v4, v8

    .line 1060
    .restart local v4       #enabled:Z
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CMD_SET_USER_DATA_ENABLE enabled="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->onSetUserDataEnabled(Z)V

    goto/16 :goto_0

    .end local v4           #enabled:Z
    :cond_5
    move v4, v7

    .line 1059
    goto :goto_3

    .line 1065
    :sswitch_11
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v8, :cond_6

    move v5, v8

    .line 1066
    .local v5, met:Z
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CMD_SET_DEPENDENCY_MET met="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 1068
    .local v2, bundle:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 1069
    const-string v8, "apnType"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1070
    .local v0, apnType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1071
    invoke-virtual {p0, v0, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->onSetDependencyMet(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .end local v0           #apnType:Ljava/lang/String;
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v5           #met:Z
    :cond_6
    move v5, v7

    .line 1065
    goto :goto_4

    .line 1077
    :sswitch_12
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v8, :cond_7

    move v4, v8

    .line 1078
    .restart local v4       #enabled:Z
    :goto_5
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->onSetPolicyDataEnabled(Z)V

    goto/16 :goto_0

    .end local v4           #enabled:Z
    :cond_7
    move v4, v7

    .line 1077
    goto :goto_5

    .line 1082
    :sswitch_13
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onUpdateIcc()V

    goto/16 :goto_0

    .line 1087
    :sswitch_14
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1088
    .local v1, ar:Landroid/os/AsyncResult;
    const-string v8, "RECV RSP for EVENT_FD_MODE_SET"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1089
    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_8

    .line 1090
    const-string v8, "SET_FD_MODE OK"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1092
    :cond_8
    const-string v8, "SET_FD_MODE ERROR"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 978
    :sswitch_data_0
    .sparse-switch
        0x11004 -> :sswitch_0
        0x42000 -> :sswitch_8
        0x42001 -> :sswitch_6
        0x42003 -> :sswitch_2
        0x42006 -> :sswitch_7
        0x42007 -> :sswitch_a
        0x42008 -> :sswitch_b
        0x4200b -> :sswitch_5
        0x4200c -> :sswitch_4
        0x4200d -> :sswitch_1
        0x4200f -> :sswitch_9
        0x42011 -> :sswitch_3
        0x42018 -> :sswitch_d
        0x4201b -> :sswitch_e
        0x4201c -> :sswitch_f
        0x4201d -> :sswitch_c
        0x4201e -> :sswitch_10
        0x4201f -> :sswitch_11
        0x42020 -> :sswitch_12
        0x42021 -> :sswitch_13
        0x42028 -> :sswitch_14
    .end sparse-switch
.end method

.method public isAllConnectionInactive()Z
    .locals 1

    .prologue
    .line 2015
    const-string v0, "isAllConnectionInactive(): Default impl always return false."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 2016
    const/4 v0, 0x0

    return v0
.end method

.method protected declared-synchronized isApnIdEnabled(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 1279
    monitor-enter p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1280
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1282
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isApnTypeActive(Ljava/lang/String;)Z
    .locals 5
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 838
    const-string v3, "dun"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 839
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->fetchDunApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    .line 840
    .local v0, dunApn:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v0, :cond_2

    .line 841
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v4}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 844
    .end local v0           #dunApn:Lcom/android/internal/telephony/ApnSetting;
    :cond_0
    :goto_0
    return v1

    .restart local v0       #dunApn:Lcom/android/internal/telephony/ApnSetting;
    :cond_1
    move v1, v2

    .line 841
    goto :goto_0

    .line 844
    .end local v0           #dunApn:Lcom/android/internal/telephony/ApnSetting;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected abstract isApnTypeAvailable(Ljava/lang/String;)Z
.end method

.method public isApnTypeEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1271
    if-nez p1, :cond_0

    .line 1272
    const/4 v0, 0x0

    .line 1274
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected isConnected()Z
    .locals 1

    .prologue
    .line 1682
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract isDataAllowed()Z
.end method

.method protected isDataAllowedAsOff(Ljava/lang/String;)Z
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1987
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract isDataPossible(Ljava/lang/String;)Z
.end method

.method protected isDataSetupCompleteOk(Landroid/os/AsyncResult;)Z
    .locals 3
    .parameter "ar"

    .prologue
    const/4 v0, 0x0

    .line 694
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDataSetupCompleteOk return false, ar.result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 709
    :goto_0
    return v0

    .line 698
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupCounter:I

    if-gtz v1, :cond_1

    .line 699
    const-string v0, "isDataSetupCompleteOk return true"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 700
    const/4 v0, 0x1

    goto :goto_0

    .line 702
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDataSetupCompleteOk return false mFailDataSetupCounter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFailDataSetupFailCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 708
    iget v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupCounter:I

    goto :goto_0
.end method

.method public abstract isDisconnected()Z
.end method

.method protected isEmergency()Z
    .locals 3

    .prologue
    .line 1123
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1124
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->isInEcm()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->isInEmergencyCall()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1125
    .local v0, result:Z
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEmergency: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1127
    return v0

    .line 1124
    .end local v0           #result:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1125
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1976
    const-string v0, "DataConnectionTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GDCT][simId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    return-void
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected notifyDataConnection(Ljava/lang/String;)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 1226
    const/4 v0, 0x0

    .local v0, id:I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 1228
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1230
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1233
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 1234
    return-void
.end method

.method protected notifyOffApnsOfAvailability(Ljava/lang/String;)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 1262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyOffApnsOfAvailability - reason= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1263
    const/4 v0, 0x0

    .local v0, id:I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 1264
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1265
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyApnIdDisconnected(Ljava/lang/String;I)V

    .line 1263
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1268
    :cond_1
    return-void
.end method

.method protected onActionIntentDataStallAlarm(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActionIntentDataStallAlarm: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 750
    const v1, 0x42011

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 751
    .local v0, msg:Landroid/os/Message;
    const-string v1, "data.stall.alram.tag"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 752
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 753
    return-void
.end method

.method protected onActionIntentReconnectAlarm(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 716
    const-string/jumbo v4, "simId"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 717
    .local v3, reconnect_for_simId:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GPRS reconnect alarm triggered by simId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Previous state was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 718
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 746
    :goto_0
    return-void

    .line 724
    :cond_0
    const-string/jumbo v4, "reconnect_alarm_extra_reason"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 725
    .local v1, reason:Ljava/lang/String;
    const-string v4, "apnType"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 726
    .local v2, reconnect_apnTypeId:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handle reconnect alarm with reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",and reconnect to apnType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 729
    const v4, 0x42003

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 730
    .local v0, msg:Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 732
    const-string v4, "apnType"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Landroid/os/Message;->arg2:I

    .line 733
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected abstract onCleanUpAllConnections(Ljava/lang/String;)V
.end method

.method protected abstract onCleanUpConnection(ZILjava/lang/String;)V
.end method

.method protected abstract onDataSetupComplete(Landroid/os/AsyncResult;)V
.end method

.method protected onDataStallAlarm(I)V
    .locals 6
    .parameter "tag"

    .prologue
    .line 1789
    iget v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallAlarmTag:I

    if-eq v2, p1, :cond_0

    .line 1791
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDataStallAlarm: ignore, tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallAlarmTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1817
    :goto_0
    return-void

    .line 1795
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->updateDataStallInfo()V

    .line 1797
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "pdp_watchdog_trigger_packet_count"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1801
    .local v0, hangWatchdogTrigger:I
    const/4 v1, 0x0

    .line 1802
    .local v1, suspectedStall:Z
    iget-wide v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    int-to-long v4, v0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 1804
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDataStallAlarm: tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " do recovery action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getRecoveryAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1806
    const/4 v1, 0x1

    .line 1807
    const v2, 0x42012

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1809
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    .line 1816
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->startDataStallAlarm(Z)V

    goto :goto_0

    .line 1812
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDataStallAlarm: tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Sent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mSentSinceLastRecv:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pkts since last received, < watchdogTrigger="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected abstract onDisconnectDone(ILandroid/os/AsyncResult;)V
.end method

.method protected onEnableApn(II)V
    .locals 6
    .parameter "apnId"
    .parameter "enabled"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_APN_ENABLE_REQUEST apnId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", apnType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dataEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabledCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isApnTypeActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1373
    if-ne p2, v4, :cond_3

    .line 1374
    monitor-enter p0

    .line 1375
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_0

    .line 1376
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    .line 1377
    iget v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    .line 1379
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1380
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    .line 1381
    .local v1, type:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1382
    iput-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 1383
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onEnableNewApn()V

    .line 1417
    .end local v1           #type:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1379
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1385
    .restart local v1       #type:Ljava/lang/String;
    :cond_2
    const-string v2, "apnSwitched"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyApnIdUpToCurrent(Ljava/lang/String;I)V

    goto :goto_0

    .line 1389
    .end local v1           #type:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .line 1390
    .local v0, didDisable:Z
    monitor-enter p0

    .line 1391
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_4

    .line 1392
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, p1

    .line 1393
    iget v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    .line 1394
    const/4 v0, 0x1

    .line 1396
    :cond_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1397
    if-eqz v0, :cond_1

    .line 1398
    iget v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    .line 1399
    :cond_5
    const-string v2, "default"

    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 1400
    const-string v2, "dataDisabled"

    invoke-virtual {p0, v4, p1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpConnection(ZILjava/lang/String;)V

    .line 1405
    :cond_6
    const-string v2, "dataDisabled"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyApnIdDisconnected(Ljava/lang/String;I)V

    .line 1406
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v2, v2, v5

    if-ne v2, v4, :cond_1

    const-string v2, "default"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1412
    const-string v2, "default"

    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 1413
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onEnableNewApn()V

    goto :goto_0

    .line 1396
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method protected onEnableNewApn()V
    .locals 0

    .prologue
    .line 1426
    return-void
.end method

.method protected abstract onRadioAvailable()V
.end method

.method protected abstract onRadioOffOrNotAvailable()V
.end method

.method protected onResetDone(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 1436
    const-string v1, "EVENT_RESET_DONE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1437
    const/4 v0, 0x0

    .line 1438
    .local v0, reason:Ljava/lang/String;
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1439
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0           #reason:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1441
    .restart local v0       #reason:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V

    .line 1442
    return-void
.end method

.method protected abstract onRoamingOff()V
.end method

.method protected abstract onRoamingOn()V
.end method

.method protected onSetDependencyMet(Ljava/lang/String;Z)V
    .locals 0
    .parameter "apnType"
    .parameter "met"

    .prologue
    .line 1540
    return-void
.end method

.method protected onSetInternalDataEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1482
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1483
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    .line 1484
    if-eqz p1, :cond_0

    .line 1485
    const-string/jumbo v0, "onSetInternalDataEnabled: changed to enabled, try to setup data call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1486
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->resetAllRetryCounts()V

    .line 1487
    const-string v0, "dataEnabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    .line 1492
    :goto_0
    monitor-exit v1

    .line 1493
    return-void

    .line 1489
    :cond_0
    const-string/jumbo v0, "onSetInternalDataEnabled: changed to disabled, cleanUpAllConnections"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1490
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    goto :goto_0

    .line 1492
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onSetPolicyDataEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1543
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1544
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getAnyDataEnabled()Z

    move-result v0

    .line 1545
    .local v0, prevEnabled:Z
    sget-boolean v1, Lcom/android/internal/telephony/DataConnectionTracker;->sPolicyDataEnabled:Z

    if-eq v1, p1, :cond_0

    .line 1546
    sput-boolean p1, Lcom/android/internal/telephony/DataConnectionTracker;->sPolicyDataEnabled:Z

    .line 1547
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getAnyDataEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1548
    if-nez v0, :cond_1

    .line 1549
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->resetAllRetryCounts()V

    .line 1550
    const-string v1, "dataEnabled"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    .line 1556
    :cond_0
    :goto_0
    monitor-exit v2

    .line 1557
    return-void

    .line 1552
    :cond_1
    const-string v1, "dataDisabled"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpAllConnections(Ljava/lang/String;)V

    goto :goto_0

    .line 1556
    .end local v0           #prevEnabled:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onSetUserDataEnabled(Z)V
    .locals 8
    .parameter "enabled"

    .prologue
    const/4 v4, 0x1

    .line 1504
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1505
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getAnyDataEnabled()Z

    move-result v2

    .line 1506
    .local v2, prevEnabled:Z
    iget-boolean v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    if-eq v3, p1, :cond_1

    .line 1507
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    .line 1508
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "mobile_data"

    if-eqz p1, :cond_2

    move v3, v4

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1510
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-ne v3, v4, :cond_0

    .line 1512
    if-eqz p1, :cond_3

    .line 1513
    const-string/jumbo v3, "roamingOn"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 1518
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getAnyDataEnabled()Z

    move-result v3

    if-eq v2, v3, :cond_1

    .line 1519
    if-nez v2, :cond_4

    .line 1520
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->resetAllRetryCounts()V

    .line 1521
    const-string v3, "dataEnabled"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    .line 1536
    :cond_1
    monitor-exit v5

    .line 1537
    return-void

    .line 1508
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1515
    :cond_3
    const-string v3, "dataDisabled"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto :goto_1

    .line 1536
    .end local v2           #prevEnabled:Z
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1526
    .restart local v2       #prevEnabled:Z
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 1527
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->isDataAllowedAsOff(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1528
    const-string v3, "dataDisabled"

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1529
    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v4

    const-string v6, "dataDisabled"

    invoke-virtual {p0, v3, v4, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpConnection(ZILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method protected abstract onTrySetupData(Ljava/lang/String;)Z
.end method

.method protected abstract onUpdateIcc()V
.end method

.method protected abstract onVoiceCallEnded()V
.end method

.method protected abstract onVoiceCallStarted()V
.end method

.method public putRecoveryAction(I)V
    .locals 2
    .parameter "action"

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "radio.data.stall.recovery.action"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putRecoveryAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1679
    return-void
.end method

.method protected resetAllRetryCounts()V
    .locals 4

    .prologue
    .line 1581
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 1582
    .local v0, ac:Lcom/android/internal/telephony/ApnContext;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ApnContext;->setRetryCount(I)V

    goto :goto_0

    .line 1584
    .end local v0           #ac:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 1585
    .local v1, dc:Lcom/android/internal/telephony/DataConnection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    goto :goto_1

    .line 1587
    .end local v1           #dc:Lcom/android/internal/telephony/DataConnection;
    :cond_1
    return-void
.end method

.method protected resetPollStats()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 1590
    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mTxPkts:J

    .line 1591
    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRxPkts:J

    .line 1592
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollPeriod:I

    .line 1593
    return-void
.end method

.method protected restartDataStallAlarm()V
    .locals 2

    .prologue
    .line 1872
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1883
    :goto_0
    return-void

    .line 1875
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getRecoveryAction()I

    move-result v0

    .line 1877
    .local v0, nextAction:I
    #calls: Lcom/android/internal/telephony/DataConnectionTracker$RecoveryAction;->isAggressiveRecovery(I)Z
    invoke-static {v0}, Lcom/android/internal/telephony/DataConnectionTracker$RecoveryAction;->access$200(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1878
    const-string v1, "data stall recovery action is pending. not resetting the alarm."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1881
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->stopDataStallAlarm()V

    .line 1882
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->startDataStallAlarm(Z)V

    goto :goto_0
.end method

.method protected abstract restartRadio()V
.end method

.method public setDataEnabled(Z)Z
    .locals 2
    .parameter "enable"

    .prologue
    .line 1468
    if-eqz p1, :cond_0

    .line 1469
    const-string/jumbo v0, "setDataEnabled: changed to enabled, try to setup data call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1470
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->resetAllRetryCounts()V

    .line 1472
    const v0, 0x42003

    const-string v1, "dataEnabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1478
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1475
    :cond_0
    const-string/jumbo v0, "setDataEnabled: changed to disabled, cleanUpAllConnections"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1476
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDataOnRoamingEnabled(Z)V
    .locals 9
    .parameter "enabled"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 891
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v1

    .line 892
    .local v1, simId:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v3

    if-eq v3, p1, :cond_1

    .line 894
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 895
    .local v2, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v2, :cond_0

    .line 896
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz p1, :cond_2

    move v3, v4

    :goto_0
    iget-wide v7, v2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v6, v3, v7, v8}, Landroid/provider/Telephony$SIMInfo;->setDataRoaming(Landroid/content/Context;IJ)I

    move-result v3

    if-gtz v3, :cond_0

    .line 897
    const-string v3, "Can\'t set data romaing in database"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 901
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 903
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker;->mRoamingSetting:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz p1, :cond_3

    :goto_1
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 909
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #simInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    return-void

    .restart local v2       #simInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_2
    move v3, v5

    .line 896
    goto :goto_0

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_3
    move v4, v5

    .line 903
    goto :goto_1
.end method

.method protected setEnabled(IZ)V
    .locals 3
    .parameter "id"
    .parameter "enable"

    .prologue
    .line 1357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") with old state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and enabledCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1360
    const v1, 0x4200d

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1361
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1362
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1363
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1364
    return-void

    .line 1362
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFDTimerValue([Ljava/lang/String;Landroid/os/Message;)I
    .locals 1
    .parameter "newTimerValue"
    .parameter "onComplete"

    .prologue
    .line 1993
    const/4 v0, 0x0

    return v0
.end method

.method public setInternalDataEnabled(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    .line 1455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInternalDataEnabled("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1457
    const v1, 0x4201b

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1458
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1459
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1460
    return v2

    .line 1458
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPacketPDPFailEvent(I)V
    .locals 3
    .parameter "PDPreason"

    .prologue
    .line 2065
    new-instance v0, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;-><init>()V

    .line 2066
    .local v0, cPACKET_SERVICE_PDP_EVENT:Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->setPDPEventInfo(Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;I)V

    .line 2067
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v1, v1, Lcom/huawei/device/chrlog/ChrLogModel;->logEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2068
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v1, v1, Lcom/huawei/device/chrlog/ChrLogModel;->logEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2070
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v1, v1, Lcom/huawei/device/chrlog/ChrLogModel;->logEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2072
    invoke-static {}, Lcom/huawei/telephony/ProtocolLogManager;->getInstance()Lcom/huawei/telephony/ProtocolLogManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    invoke-virtual {v1, v2}, Lcom/huawei/telephony/ProtocolLogManager;->reportAbnormalLevelA(Lcom/huawei/device/chrlog/ChrLogModel;)V

    .line 2074
    return-void
.end method

.method public setPacketRecoveryEvent(I)V
    .locals 3
    .parameter "RecoveryReason"

    .prologue
    .line 2076
    new-instance v0, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;

    invoke-direct {v0}, Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;-><init>()V

    .line 2077
    .local v0, cPACKET_SERVICE_RECOVERY_EVENT:Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->setRecoveryEventInfo(Lcom/huawei/device/chrlog/CSegEVENT_PACKET_SERVICE_PERFORMANCE_EVENT;I)V

    .line 2078
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v1, v1, Lcom/huawei/device/chrlog/ChrLogModel;->logEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2079
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v1, v1, Lcom/huawei/device/chrlog/ChrLogModel;->logEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2081
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    iget-object v1, v1, Lcom/huawei/device/chrlog/ChrLogModel;->logEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2083
    invoke-static {}, Lcom/huawei/telephony/ProtocolLogManager;->getInstance()Lcom/huawei/telephony/ProtocolLogManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mChrLogModel:Lcom/huawei/device/chrlog/ChrLogModel;

    invoke-virtual {v1, v2}, Lcom/huawei/telephony/ProtocolLogManager;->reportAbnormalLevelA(Lcom/huawei/device/chrlog/ChrLogModel;)V

    .line 2085
    return-void
.end method

.method protected abstract setState(Lcom/android/internal/telephony/DctConstants$State;)V
.end method

.method protected startDataStallAlarm(Z)V
    .locals 9
    .parameter "suspectedStall"

    .prologue
    .line 1820
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getRecoveryAction()I

    move-result v3

    .line 1825
    .local v3, nextAction:I
    iget-boolean v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsScreenOn:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    #calls: Lcom/android/internal/telephony/DataConnectionTracker$RecoveryAction;->isAggressiveRecovery(I)Z
    invoke-static {v3}, Lcom/android/internal/telephony/DataConnectionTracker$RecoveryAction;->access$200(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1826
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "data_stall_alarm_aggressive_delay_in_ms"

    const v6, 0xea60

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1835
    .local v1, delayInMs:I
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallAlarmTag:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallAlarmTag:I

    .line 1837
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startDataStallAlarm: tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallAlarmTag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " delay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit16 v5, v1, 0x3e8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1840
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1843
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getActionIntentDataStallAlarm()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1844
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "data.stall.alram.tag"

    iget v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallAlarmTag:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1848
    const-string/jumbo v4, "simId"

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1850
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 1852
    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    int-to-long v7, v1

    add-long/2addr v5, v7

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1854
    return-void

    .line 1830
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #delayInMs:I
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "data_stall_alarm_non_aggressive_delay_in_ms"

    const v6, 0x57e40

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .restart local v1       #delayInMs:I
    goto/16 :goto_0
.end method

.method protected startNetStatPoll()V
    .locals 2

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    if-nez v0, :cond_0

    .line 1599
    const-string/jumbo v0, "startNetStatPoll"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1600
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->resetPollStats()V

    .line 1601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    .line 1602
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1604
    :cond_0
    return-void
.end method

.method protected startScriPoll()V
    .locals 0

    .prologue
    .line 968
    return-void
.end method

.method protected stopDataStallAlarm()V
    .locals 3

    .prologue
    .line 1857
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1861
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopDataStallAlarm: current tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallAlarmTag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDataStallAlarmIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1864
    iget v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallAlarmTag:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallAlarmTag:I

    .line 1865
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 1866
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1867
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 1869
    :cond_0
    return-void
.end method

.method protected stopNetStatPoll()V
    .locals 1

    .prologue
    .line 1607
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    .line 1608
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1609
    const-string/jumbo v0, "stopNetStatPoll"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1610
    return-void
.end method

.method protected stopScriPoll()V
    .locals 0

    .prologue
    .line 972
    return-void
.end method

.method protected syncRoamingSetting()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2003
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2004
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v6

    invoke-static {v5, v6}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 2005
    .local v2, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v2, :cond_0

    .line 2006
    iget v5, v2, Landroid/provider/Telephony$SIMInfo;->mDataRoaming:I

    if-ne v5, v3, :cond_1

    move v0, v3

    .line 2007
    .local v0, dataRoaming:Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dataRoaming = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 2008
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker;->mRoamingSetting:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v6

    aget-object v5, v5, v6

    if-eqz v0, :cond_2

    :goto_1
    invoke-static {v1, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2011
    .end local v0           #dataRoaming:Z
    :cond_0
    return-void

    :cond_1
    move v0, v4

    .line 2006
    goto :goto_0

    .restart local v0       #dataRoaming:Z
    :cond_2
    move v3, v4

    .line 2008
    goto :goto_1
.end method

.method public updateDataActivity()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 1617
    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

    iget-wide v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mTxPkts:J

    iget-wide v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRxPkts:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;JJ)V

    .line 1618
    .local v0, preTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;
    new-instance v6, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;)V

    .line 1619
    .local v6, curTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;
    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->updateTxRxSum()V

    .line 1620
    iget-wide v1, v6, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->txPkts:J

    iput-wide v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mTxPkts:J

    .line 1621
    iget-wide v1, v6, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->rxPkts:J

    iput-wide v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRxPkts:J

    .line 1624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDataActivity: curTxRxSum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " preTxRxSum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1627
    iget-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    if-eqz v1, :cond_1

    iget-wide v1, v0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->txPkts:J

    cmp-long v1, v1, v12

    if-gtz v1, :cond_0

    iget-wide v1, v0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->rxPkts:J

    cmp-long v1, v1, v12

    if-lez v1, :cond_1

    .line 1628
    :cond_0
    iget-wide v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mTxPkts:J

    iget-wide v3, v0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->txPkts:J

    sub-long v10, v1, v3

    .line 1629
    .local v10, sent:J
    iget-wide v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRxPkts:J

    iget-wide v3, v0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->rxPkts:J

    sub-long v8, v1, v3

    .line 1632
    .local v8, received:J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDataActivity: sent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " received="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1633
    cmp-long v1, v10, v12

    if-lez v1, :cond_2

    cmp-long v1, v8, v12

    if-lez v1, :cond_2

    .line 1634
    sget-object v7, Lcom/android/internal/telephony/DctConstants$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 1644
    .local v7, newActivity:Lcom/android/internal/telephony/DctConstants$Activity;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    if-eq v1, v7, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsScreenOn:Z

    if-eqz v1, :cond_1

    .line 1646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDataActivity: newActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1647
    iput-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 1648
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 1651
    .end local v7           #newActivity:Lcom/android/internal/telephony/DctConstants$Activity;
    .end local v8           #received:J
    .end local v10           #sent:J
    :cond_1
    return-void

    .line 1635
    .restart local v8       #received:J
    .restart local v10       #sent:J
    :cond_2
    cmp-long v1, v10, v12

    if-lez v1, :cond_3

    cmp-long v1, v8, v12

    if-nez v1, :cond_3

    .line 1636
    sget-object v7, Lcom/android/internal/telephony/DctConstants$Activity;->DATAOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    .restart local v7       #newActivity:Lcom/android/internal/telephony/DctConstants$Activity;
    goto :goto_0

    .line 1637
    .end local v7           #newActivity:Lcom/android/internal/telephony/DctConstants$Activity;
    :cond_3
    cmp-long v1, v10, v12

    if-nez v1, :cond_4

    cmp-long v1, v8, v12

    if-lez v1, :cond_4

    .line 1638
    sget-object v7, Lcom/android/internal/telephony/DctConstants$Activity;->DATAIN:Lcom/android/internal/telephony/DctConstants$Activity;

    .restart local v7       #newActivity:Lcom/android/internal/telephony/DctConstants$Activity;
    goto :goto_0

    .line 1640
    .end local v7           #newActivity:Lcom/android/internal/telephony/DctConstants$Activity;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    sget-object v2, Lcom/android/internal/telephony/DctConstants$Activity;->DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

    if-ne v1, v2, :cond_5

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .restart local v7       #newActivity:Lcom/android/internal/telephony/DctConstants$Activity;
    :goto_1
    goto :goto_0

    .end local v7           #newActivity:Lcom/android/internal/telephony/DctConstants$Activity;
    :cond_5
    sget-object v7, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    goto :goto_1
.end method

.method public updateMobileData()V
    .locals 0

    .prologue
    .line 1984
    return-void
.end method
