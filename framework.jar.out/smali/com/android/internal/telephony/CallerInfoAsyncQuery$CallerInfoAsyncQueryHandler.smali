.class Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallerInfoAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallerInfoAsyncQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;
    }
.end annotation


# instance fields
.field private compNum:Ljava/lang/String;

.field private mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

.field private mQueryContext:Landroid/content/Context;

.field private mQueryUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/internal/telephony/CallerInfoAsyncQuery;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 217
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 218
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery;Landroid/content/Context;Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->compNum:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter "looper"

    .prologue
    .line 222
    new-instance v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 12
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x0

    .line 240
    move-object v9, p2

    check-cast v9, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    .line 241
    .local v9, cw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    if-nez v9, :cond_1

    .line 247
    if-eqz p3, :cond_0

    .line 248
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget v0, v9, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    if-ne v0, v6, :cond_2

    .line 256
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    #getter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mCallerInfoAsyncQueryEx:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryEx;
    invoke-static {v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->access$000(Lcom/android/internal/telephony/CallerInfoAsyncQuery;)Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryEx;

    move-result-object v0

    #calls: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryEx;->release()V
    invoke-static {v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryEx;->access$100(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryEx;)V

    .line 259
    if-eqz p3, :cond_0

    .line 260
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-nez v0, :cond_6

    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    if-nez v0, :cond_4

    .line 268
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$QueryPoolException;

    const-string v1, "Bad context or query uri, or CallerInfoAsyncQuery already released."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_4
    iget v0, v9, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 282
    const-string v0, "CallerInfoAsyncQuery"

    const-string v1, "[HW]cw.event == EVENT_EMERGENCY_NUMBER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v0, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    iget-object v4, v9, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iget v5, v9, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->simId:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/telephony/CallerInfo;->markAsEmergency(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 363
    :cond_5
    :goto_1
    new-instance v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;)V

    .line 364
    .local v2, endMarker:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    iput v6, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    move-object v0, p0

    move v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 365
    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .end local v2           #endMarker:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    :cond_6
    iget-object v0, v9, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    if-eqz v0, :cond_7

    .line 372
    iget-object v0, v9, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iget-object v1, v9, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-interface {v0, p1, v1, v3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    .line 375
    :cond_7
    if-eqz p3, :cond_0

    .line 376
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 286
    :cond_8
    iget v0, v9, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    .line 290
    new-instance v0, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iget v1, v9, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->simId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallerInfo;->markAsVoiceMailGemini(I)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_1

    .line 300
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    #getter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mCallerInfoAsyncQueryEx:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryEx;
    invoke-static {v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->access$000(Lcom/android/internal/telephony/CallerInfoAsyncQuery;)Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryEx;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->compNum:Ljava/lang/String;

    #calls: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryEx;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;
    invoke-static {v0, v1, v4, p3, v5}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryEx;->access$200(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryEx;Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    iget-object v1, v9, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v0, v1, v4}, Lcom/android/internal/telephony/CallerInfo;->doSecondaryLookupIfNecessary(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v11

    .line 307
    .local v11, newCallerInfo:Lcom/android/internal/telephony/CallerInfo;
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eq v11, v0, :cond_a

    .line 308
    iput-object v11, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 327
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->isEmptyHook(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 333
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    iget-object v4, v9, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/CallerInfo;->updateGeoDescriptionAndLabel(Landroid/content/Context;Ljava/lang/String;)V

    .line 339
    iget-object v0, v9, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    const-string v1, "country_detector"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/location/CountryDetector;

    .line 344
    .local v10, detector:Landroid/location/CountryDetector;
    const-string v8, ""

    .line 345
    .local v8, countryIso:Ljava/lang/String;
    if-eqz v10, :cond_c

    invoke-virtual {v10}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 346
    invoke-virtual {v10}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v8

    .line 353
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v9, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v1, v4, v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_1

    .line 350
    :cond_c
    const-string v0, "CallerInfoAsyncQuery"

    const-string v1, "(detector == null) or (detector.detectCountry() == null)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private isEmptyHook(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "str"

    .prologue
    const/4 v0, 0x1

    return v0
.end method
