.class Landroid/media/AudioService$AudioServicesEx;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServicesEx"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$AudioServicesEx$HwThemeHandler;
    }
.end annotation


# static fields
.field private static final DEBUG_THEME_SOUND:Z = true

.field private static final MSG_RELOAD_SNDEFFS:I = 0x63

.field private static final SYSKEY_SOUND_HWT:Ljava/lang/String; = "syskey_sound_hwt"

.field private static final TAG_THEME_SOUND:Ljava/lang/String; = "AudioServicesEx"


# instance fields
.field private mHwThemeHandler:Landroid/media/AudioService$AudioServicesEx$HwThemeHandler;

.field private final mHwThemeReceiver:Landroid/content/BroadcastReceiver;

.field private mSysKeyEffectFile:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method public constructor <init>(Landroid/media/AudioService;)V
    .locals 3
    .parameter

    .prologue
    .line 7002
    iput-object p1, p0, Landroid/media/AudioService$AudioServicesEx;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7012
    new-instance v1, Landroid/media/AudioService$AudioServicesEx$1;

    invoke-direct {v1, p0}, Landroid/media/AudioService$AudioServicesEx$1;-><init>(Landroid/media/AudioService$AudioServicesEx;)V

    iput-object v1, p0, Landroid/media/AudioService$AudioServicesEx;->mHwThemeReceiver:Landroid/content/BroadcastReceiver;

    .line 7003
    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "syskey_sound_hwt"

    invoke-static {v1, v2}, Landroid/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioService$AudioServicesEx;->mSysKeyEffectFile:Ljava/lang/String;

    .line 7004
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.RINGTONE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 7005
    .local v0, hwThemeFilter:Landroid/content/IntentFilter;
    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/media/AudioService;->access$9100(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService$AudioServicesEx;->mHwThemeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 7006
    return-void
.end method

.method static synthetic access$12000(Landroid/media/AudioService$AudioServicesEx;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6993
    iget-object v0, p0, Landroid/media/AudioService$AudioServicesEx;->mSysKeyEffectFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12002(Landroid/media/AudioService$AudioServicesEx;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6993
    iput-object p1, p0, Landroid/media/AudioService$AudioServicesEx;->mSysKeyEffectFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$12100(Landroid/media/AudioService$AudioServicesEx;)Landroid/media/AudioService$AudioServicesEx$HwThemeHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6993
    iget-object v0, p0, Landroid/media/AudioService$AudioServicesEx;->mHwThemeHandler:Landroid/media/AudioService$AudioServicesEx$HwThemeHandler;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/media/AudioService$AudioServicesEx;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 6993
    invoke-direct {p0}, Landroid/media/AudioService$AudioServicesEx;->unloadHwThemeSoundEffects()V

    return-void
.end method

.method private unloadHwThemeSoundEffects()V
    .locals 2

    .prologue
    .line 7067
    iget-object v0, p0, Landroid/media/AudioService$AudioServicesEx;->mHwThemeHandler:Landroid/media/AudioService$AudioServicesEx$HwThemeHandler;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioServicesEx$HwThemeHandler;->removeMessages(I)V

    .line 7068
    return-void
.end method


# virtual methods
.method public getSampleId(ILjava/lang/String;I)I
    .locals 4
    .parameter "effect"
    .parameter "defFilePath"
    .parameter "index"

    .prologue
    const/4 v3, 0x1

    .line 7042
    const/4 v1, 0x0

    .line 7043
    .local v1, themeFilePath:Ljava/lang/String;
    const/4 v0, 0x0

    .line 7045
    .local v0, sampleId:I
    if-nez p1, :cond_2

    .line 7046
    iget-object v1, p0, Landroid/media/AudioService$AudioServicesEx;->mSysKeyEffectFile:Ljava/lang/String;

    .line 7047
    if-eqz v1, :cond_1

    .line 7049
    invoke-virtual {p0, v1}, Landroid/media/AudioService$AudioServicesEx;->isFileReady(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7050
    iget-object v2, p0, Landroid/media/AudioService$AudioServicesEx;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v2}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v2

    invoke-virtual {v2, v1, p3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    .line 7051
    if-lez v0, :cond_0

    .line 7052
    iget-object v2, p0, Landroid/media/AudioService$AudioServicesEx;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "syskey_sound_hwt"

    invoke-static {v2, v3, v1}, Landroid/provider/SettingsEx$Systemex;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7063
    :cond_0
    :goto_0
    return v0

    .line 7057
    :cond_1
    iget-object v2, p0, Landroid/media/AudioService$AudioServicesEx;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v2}, Landroid/media/AudioService;->access$5200(Landroid/media/AudioService;)[[I

    move-result-object v2

    aget-object v2, v2, p1

    aget v2, v2, v3

    if-lez v2, :cond_0

    .line 7058
    iget-object v2, p0, Landroid/media/AudioService$AudioServicesEx;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v2}, Landroid/media/AudioService;->access$5200(Landroid/media/AudioService;)[[I

    move-result-object v2

    aget-object v2, v2, p1

    aget v0, v2, v3

    goto :goto_0

    .line 7061
    :cond_2
    iget-object v2, p0, Landroid/media/AudioService$AudioServicesEx;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v2}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public initHandler()V
    .locals 2

    .prologue
    .line 7009
    new-instance v0, Landroid/media/AudioService$AudioServicesEx$HwThemeHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/AudioService$AudioServicesEx$HwThemeHandler;-><init>(Landroid/media/AudioService$AudioServicesEx;Landroid/media/AudioService$1;)V

    iput-object v0, p0, Landroid/media/AudioService$AudioServicesEx;->mHwThemeHandler:Landroid/media/AudioService$AudioServicesEx$HwThemeHandler;

    .line 7010
    return-void
.end method

.method public isFileReady(Ljava/lang/String;)Z
    .locals 2
    .parameter "filename"

    .prologue
    .line 7071
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7072
    .local v0, f:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 7073
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    .line 7075
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reloadSoundEffects()V
    .locals 1

    .prologue
    .line 7079
    iget-object v0, p0, Landroid/media/AudioService$AudioServicesEx;->this$0:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->unloadSoundEffects()V

    .line 7080
    iget-object v0, p0, Landroid/media/AudioService$AudioServicesEx;->this$0:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->loadSoundEffects()Z

    .line 7081
    return-void
.end method
