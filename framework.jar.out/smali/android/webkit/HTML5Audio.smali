.class Landroid/webkit/HTML5Audio;
.super Landroid/os/Handler;
.source "HTML5Audio.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5Audio$1;,
        Landroid/webkit/HTML5Audio$AudioFocusManager;,
        Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;,
        Landroid/webkit/HTML5Audio$TimeupdateTask;
    }
.end annotation


# static fields
.field private static COMPLETE:I = 0x0

.field private static final COOKIE:Ljava/lang/String; = "Cookie"

.field private static ERROR:I = 0x0

.field private static final HIDE_URL_LOGS:Ljava/lang/String; = "x-hide-urls-from-log"

.field private static IDLE:I = 0x0

.field private static INITIALIZED:I = 0x0

.field private static final LOGTAG:Ljava/lang/String; = "HTML5Audio"

.field private static final MSG_PAUSE:I = 0x65

.field private static PAUSED:I = 0x0

.field private static PREPARED:I = 0x0

.field private static STARTED:I = 0x0

.field private static STOPPED:I = 0x0

.field private static final TIMEUPDATE:I = 0x64

.field private static final TIMEUPDATE_PERIOD:I = 0xfa

.field static sAudioFocusManager:Landroid/webkit/HTML5Audio$AudioFocusManager;


# instance fields
.field private mAskToPlay:Z

.field private mContext:Landroid/content/Context;

.field private mIsPrivateBrowsingEnabledGetter:Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;

.field private mLoopEnabled:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMuted:Z

.field private mNativePointer:I

.field private mPrevState:I

.field private mProcessingOnEnd:Z

.field private mState:I

.field private mTimer:Ljava/util/Timer;

.field private mUrl:Ljava/lang/String;

.field private mVolume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput v0, Landroid/webkit/HTML5Audio;->IDLE:I

    .line 59
    const/4 v0, 0x1

    sput v0, Landroid/webkit/HTML5Audio;->INITIALIZED:I

    .line 60
    const/4 v0, 0x2

    sput v0, Landroid/webkit/HTML5Audio;->PREPARED:I

    .line 61
    const/4 v0, 0x4

    sput v0, Landroid/webkit/HTML5Audio;->STARTED:I

    .line 62
    const/4 v0, 0x5

    sput v0, Landroid/webkit/HTML5Audio;->COMPLETE:I

    .line 63
    const/4 v0, 0x6

    sput v0, Landroid/webkit/HTML5Audio;->PAUSED:I

    .line 64
    const/4 v0, -0x2

    sput v0, Landroid/webkit/HTML5Audio;->STOPPED:I

    .line 65
    const/4 v0, -0x1

    sput v0, Landroid/webkit/HTML5Audio;->ERROR:I

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebViewCore;I)V
    .locals 3
    .parameter "webViewCore"
    .parameter "nativePtr"

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 67
    sget v0, Landroid/webkit/HTML5Audio;->IDLE:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    .line 69
    iget v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mPrevState:I

    .line 72
    iput-boolean v1, p0, Landroid/webkit/HTML5Audio;->mAskToPlay:Z

    .line 73
    iput-boolean v1, p0, Landroid/webkit/HTML5Audio;->mLoopEnabled:Z

    .line 74
    iput-boolean v1, p0, Landroid/webkit/HTML5Audio;->mProcessingOnEnd:Z

    .line 355
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/webkit/HTML5Audio;->mVolume:F

    .line 207
    iput p2, p0, Landroid/webkit/HTML5Audio;->mNativePointer:I

    .line 208
    invoke-direct {p0}, Landroid/webkit/HTML5Audio;->resetMediaPlayer()V

    .line 209
    invoke-virtual {p1}, Landroid/webkit/WebViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HTML5Audio;->mContext:Landroid/content/Context;

    .line 210
    new-instance v0, Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;

    invoke-virtual {p1}, Landroid/webkit/WebViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebViewCore;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;-><init>(Landroid/webkit/HTML5Audio;Landroid/os/Looper;Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/HTML5Audio;->mIsPrivateBrowsingEnabledGetter:Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;

    .line 212
    return-void
.end method

.method private getAudioFocusManager()Landroid/webkit/HTML5Audio$AudioFocusManager;
    .locals 3

    .prologue
    .line 399
    const-string v0, "HTML5Audio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAudioFocusManager(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/webkit/HTML5Audio;->sAudioFocusManager:Landroid/webkit/HTML5Audio$AudioFocusManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    sget-object v0, Landroid/webkit/HTML5Audio;->sAudioFocusManager:Landroid/webkit/HTML5Audio$AudioFocusManager;

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Landroid/webkit/HTML5Audio$AudioFocusManager;

    iget-object v1, p0, Landroid/webkit/HTML5Audio;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/webkit/HTML5Audio$AudioFocusManager;-><init>(Landroid/webkit/HTML5Audio;Landroid/content/Context;)V

    sput-object v0, Landroid/webkit/HTML5Audio;->sAudioFocusManager:Landroid/webkit/HTML5Audio$AudioFocusManager;

    .line 403
    :cond_0
    sget-object v0, Landroid/webkit/HTML5Audio;->sAudioFocusManager:Landroid/webkit/HTML5Audio$AudioFocusManager;

    return-object v0
.end method

.method private getMaxTimeSeekable()F
    .locals 2

    .prologue
    .line 389
    iget v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v1, Landroid/webkit/HTML5Audio;->PREPARED:I

    if-lt v0, v1, :cond_0

    .line 390
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    .line 392
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeOnBuffering(II)V
.end method

.method private native nativeOnEnded(I)V
.end method

.method private native nativeOnPaused(I)V
.end method

.method private native nativeOnPrepared(IIII)V
.end method

.method private native nativeOnRequestPlay(I)V
.end method

.method private native nativeOnTimeupdate(II)V
.end method

.method private pause()V
    .locals 2

    .prologue
    .line 332
    iget v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v1, Landroid/webkit/HTML5Audio;->STARTED:I

    if-ne v0, v1, :cond_2

    .line 333
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 336
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 337
    sget v0, Landroid/webkit/HTML5Audio;->PAUSED:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    .line 343
    :cond_1
    :goto_0
    return-void

    .line 339
    :cond_2
    iget-boolean v0, p0, Landroid/webkit/HTML5Audio;->mAskToPlay:Z

    if-eqz v0, :cond_1

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HTML5Audio;->mAskToPlay:Z

    goto :goto_0
.end method

.method private play()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 302
    iget v2, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v3, Landroid/webkit/HTML5Audio;->COMPLETE:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/webkit/HTML5Audio;->mLoopEnabled:Z

    if-ne v2, v4, :cond_1

    .line 304
    iget-object v2, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 305
    sget v2, Landroid/webkit/HTML5Audio;->STARTED:I

    iput v2, p0, Landroid/webkit/HTML5Audio;->mState:I

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget v2, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v3, Landroid/webkit/HTML5Audio;->ERROR:I

    if-lt v2, v3, :cond_2

    iget v2, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v3, Landroid/webkit/HTML5Audio;->PREPARED:I

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Landroid/webkit/HTML5Audio;->mUrl:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 310
    invoke-direct {p0}, Landroid/webkit/HTML5Audio;->resetMediaPlayer()V

    .line 311
    iget-object v2, p0, Landroid/webkit/HTML5Audio;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/webkit/HTML5Audio;->setDataSource(Ljava/lang/String;)V

    .line 312
    iput-boolean v4, p0, Landroid/webkit/HTML5Audio;->mAskToPlay:Z

    .line 315
    :cond_2
    iget v2, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v3, Landroid/webkit/HTML5Audio;->PREPARED:I

    if-lt v2, v3, :cond_0

    .line 320
    invoke-direct {p0}, Landroid/webkit/HTML5Audio;->getAudioFocusManager()Landroid/webkit/HTML5Audio$AudioFocusManager;

    move-result-object v0

    .line 321
    .local v0, afm:Landroid/webkit/HTML5Audio$AudioFocusManager;
    invoke-virtual {v0, p0}, Landroid/webkit/HTML5Audio$AudioFocusManager;->requestFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    .line 324
    .local v1, result:I
    if-ne v1, v4, :cond_0

    .line 325
    iget-object v2, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 326
    sget v2, Landroid/webkit/HTML5Audio;->STARTED:I

    iput v2, p0, Landroid/webkit/HTML5Audio;->mState:I

    goto :goto_0
.end method

.method private resetMediaPlayer()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 216
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 220
    :goto_0
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 221
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 222
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 223
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 224
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 226
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 229
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5Audio;->mTimer:Ljava/util/Timer;

    .line 230
    sget v0, Landroid/webkit/HTML5Audio;->IDLE:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    .line 231
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0
.end method

.method private seek(I)V
    .locals 3
    .parameter "msec"

    .prologue
    const/4 v2, 0x1

    .line 346
    iget-boolean v0, p0, Landroid/webkit/HTML5Audio;->mProcessingOnEnd:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v1, Landroid/webkit/HTML5Audio;->COMPLETE:I

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 347
    iput-boolean v2, p0, Landroid/webkit/HTML5Audio;->mLoopEnabled:Z

    .line 349
    :cond_0
    iget v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v1, Landroid/webkit/HTML5Audio;->PREPARED:I

    if-lt v0, v1, :cond_1

    .line 350
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 352
    :cond_1
    return-void
.end method

.method private setDataSource(Ljava/lang/String;)V
    .locals 7
    .parameter "url"

    .prologue
    const/16 v6, 0x80

    .line 234
    iput-object p1, p0, Landroid/webkit/HTML5Audio;->mUrl:Ljava/lang/String;

    .line 236
    :try_start_0
    iget v4, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v5, Landroid/webkit/HTML5Audio;->IDLE:I

    if-eq v4, v5, :cond_0

    .line 237
    invoke-direct {p0}, Landroid/webkit/HTML5Audio;->resetMediaPlayer()V

    .line 239
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/HTML5Audio;->mIsPrivateBrowsingEnabledGetter:Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;

    invoke-virtual {v5}, Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;->get()Z

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, cookieValue:Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 243
    .local v3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 244
    const-string v4, "Cookie"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_1
    iget-object v4, p0, Landroid/webkit/HTML5Audio;->mIsPrivateBrowsingEnabledGetter:Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;

    invoke-virtual {v4}, Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;->get()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 247
    const-string/jumbo v4, "x-hide-urls-from-log"

    const-string/jumbo v5, "true"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_2
    iget-object v4, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p1, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 251
    sget v4, Landroid/webkit/HTML5Audio;->INITIALIZED:I

    iput v4, p0, Landroid/webkit/HTML5Audio;->mState:I

    .line 252
    iget-object v4, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v0           #cookieValue:Ljava/lang/String;
    .end local v3           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v2

    .line 254
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, debugUrl:Ljava/lang/String;
    :goto_1
    const-string v4, "HTML5Audio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t load the resource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " exc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-direct {p0}, Landroid/webkit/HTML5Audio;->resetMediaPlayer()V

    goto :goto_0

    .end local v1           #debugUrl:Ljava/lang/String;
    :cond_3
    move-object v1, p1

    .line 254
    goto :goto_1
.end method

.method private setMuted(Z)V
    .locals 2
    .parameter "muted"

    .prologue
    .line 366
    iput-boolean p1, p0, Landroid/webkit/HTML5Audio;->mMuted:Z

    .line 367
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 368
    .local v0, volume:F
    :goto_0
    iget-object v1, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 369
    return-void

    .line 367
    .end local v0           #volume:F
    :cond_0
    iget v0, p0, Landroid/webkit/HTML5Audio;->mVolume:F

    goto :goto_0
.end method

.method private setVolume(F)V
    .locals 1
    .parameter "volume"

    .prologue
    .line 358
    iput p1, p0, Landroid/webkit/HTML5Audio;->mVolume:F

    .line 359
    iget-boolean v0, p0, Landroid/webkit/HTML5Audio;->mMuted:Z

    if-eqz v0, :cond_0

    .line 363
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method

.method private teardown()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 379
    sget v0, Landroid/webkit/HTML5Audio;->ERROR:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    .line 380
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/HTML5Audio;->mNativePointer:I

    .line 383
    sget-object v0, Landroid/webkit/HTML5Audio;->sAudioFocusManager:Landroid/webkit/HTML5Audio$AudioFocusManager;

    if-eqz v0, :cond_0

    .line 384
    invoke-direct {p0}, Landroid/webkit/HTML5Audio;->getAudioFocusManager()Landroid/webkit/HTML5Audio$AudioFocusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/HTML5Audio$AudioFocusManager;->abandonFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 386
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 127
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 130
    :pswitch_0
    :try_start_0
    iget v2, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v3, Landroid/webkit/HTML5Audio;->ERROR:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 132
    .local v1, position:I
    iget v2, p0, Landroid/webkit/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, v1, v2}, Landroid/webkit/HTML5Audio;->nativeOnTimeupdate(II)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    .end local v1           #position:I
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/IllegalStateException;
    sget v2, Landroid/webkit/HTML5Audio;->ERROR:I

    iput v2, p0, Landroid/webkit/HTML5Audio;->mState:I

    goto :goto_0

    .line 142
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :pswitch_1
    iget v2, p0, Landroid/webkit/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, v2}, Landroid/webkit/HTML5Audio;->nativeOnPaused(I)V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAudioFocusChange(I)V
    .locals 2
    .parameter "focusChange"

    .prologue
    .line 262
    packed-switch p1, :pswitch_data_0

    .line 298
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 265
    :pswitch_1
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 266
    invoke-direct {p0}, Landroid/webkit/HTML5Audio;->resetMediaPlayer()V

    goto :goto_0

    .line 268
    :cond_1
    iget v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v1, Landroid/webkit/HTML5Audio;->ERROR:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/webkit/HTML5Audio;->mPrevState:I

    sget v1, Landroid/webkit/HTML5Audio;->STARTED:I

    if-ne v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 271
    sget v0, Landroid/webkit/HTML5Audio;->STARTED:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    goto :goto_0

    .line 277
    :pswitch_2
    iget v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mPrevState:I

    .line 279
    iget v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v1, Landroid/webkit/HTML5Audio;->ERROR:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-direct {p0}, Landroid/webkit/HTML5Audio;->pause()V

    .line 284
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 292
    :pswitch_3
    iget v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mPrevState:I

    .line 295
    iget v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v1, Landroid/webkit/HTML5Audio;->ERROR:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkit/HTML5Audio;->pause()V

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 154
    iget v0, p0, Landroid/webkit/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, p2, v0}, Landroid/webkit/HTML5Audio;->nativeOnBuffering(II)V

    .line 155
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mp"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 161
    iget v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v1, Landroid/webkit/HTML5Audio;->IDLE:I

    if-eq v0, v1, :cond_0

    .line 162
    sget v0, Landroid/webkit/HTML5Audio;->COMPLETE:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    .line 164
    :cond_0
    iput-boolean v3, p0, Landroid/webkit/HTML5Audio;->mProcessingOnEnd:Z

    .line 165
    iget v0, p0, Landroid/webkit/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, v0}, Landroid/webkit/HTML5Audio;->nativeOnEnded(I)V

    .line 166
    iput-boolean v2, p0, Landroid/webkit/HTML5Audio;->mProcessingOnEnd:Z

    .line 168
    iget-boolean v0, p0, Landroid/webkit/HTML5Audio;->mLoopEnabled:Z

    if-ne v0, v3, :cond_1

    iget v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v1, Landroid/webkit/HTML5Audio;->COMPLETE:I

    if-ne v0, v1, :cond_1

    .line 169
    iget v0, p0, Landroid/webkit/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, v0}, Landroid/webkit/HTML5Audio;->nativeOnRequestPlay(I)V

    .line 170
    iput-boolean v2, p0, Landroid/webkit/HTML5Audio;->mLoopEnabled:Z

    .line 172
    :cond_1
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 176
    sget v0, Landroid/webkit/HTML5Audio;->ERROR:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    .line 177
    invoke-direct {p0}, Landroid/webkit/HTML5Audio;->resetMediaPlayer()V

    .line 178
    sget v0, Landroid/webkit/HTML5Audio;->IDLE:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7
    .parameter "mp"

    .prologue
    const-wide/16 v2, 0xfa

    const/4 v6, 0x0

    .line 184
    sget v0, Landroid/webkit/HTML5Audio;->PREPARED:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    .line 185
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mTimer:Ljava/util/Timer;

    new-instance v1, Landroid/webkit/HTML5Audio$TimeupdateTask;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Landroid/webkit/HTML5Audio$TimeupdateTask;-><init>(Landroid/webkit/HTML5Audio;Landroid/webkit/HTML5Audio$1;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 189
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iget v1, p0, Landroid/webkit/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, v0, v6, v6, v1}, Landroid/webkit/HTML5Audio;->nativeOnPrepared(IIII)V

    .line 190
    iget-boolean v0, p0, Landroid/webkit/HTML5Audio;->mAskToPlay:Z

    if-eqz v0, :cond_1

    .line 191
    iput-boolean v6, p0, Landroid/webkit/HTML5Audio;->mAskToPlay:Z

    .line 192
    invoke-direct {p0}, Landroid/webkit/HTML5Audio;->play()V

    .line 194
    :cond_1
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Landroid/webkit/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, v0, v1}, Landroid/webkit/HTML5Audio;->nativeOnTimeupdate(II)V

    .line 199
    return-void
.end method
