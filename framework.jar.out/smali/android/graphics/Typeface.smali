.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field private static final CHINESE_LANGUAGE:Ljava/lang/String; = null

.field public static final DEFAULT:Landroid/graphics/Typeface; = null

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface; = null

.field public static final DEFAULT_BOLD_ITALIC:Landroid/graphics/Typeface; = null

.field public static final DEFAULT_ITALIC:Landroid/graphics/Typeface; = null

.field private static final ENGLISH_LANGUAGE:Ljava/lang/String; = null

.field private static final FONT_SUFFIX_BOLD:Ljava/lang/String; = "-Bold.ttf"

.field private static final FONT_SUFFIX_BOLD_ITALIC:Ljava/lang/String; = "-BoldItalic.ttf"

.field private static final FONT_SUFFIX_ITALIC:Ljava/lang/String; = "-Italic.ttf"

.field private static final FONT_SUFFIX_NONE:Ljava/lang/String; = ".ttf"

.field private static final FONT_SUFFIX_REGULAR:Ljava/lang/String; = "-Regular.ttf"

.field static final HWTHEME_FLIPFONT:I = 0x2

.field public static final ITALIC:I = 0x2

.field public static final MONOSPACE:Landroid/graphics/Typeface; = null

.field public static final NORMAL:I = 0x0

.field public static final SANS_SERIF:Landroid/graphics/Typeface; = null

.field public static final SERIF:Landroid/graphics/Typeface; = null

.field private static final THEME_FONTS_BASE_PATH:Ljava/lang/String; = "/data/skin/fonts/"

.field private static THEME_FONT_PATH:Ljava/lang/String;

.field private static THEME_FONT_PATH_BOLD:Ljava/lang/String;

.field static sDefaults:[Landroid/graphics/Typeface;

.field static final sHwTFlipFontOn:Z

.field private static final sTypefaceCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mStyle:I

.field native_instance:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v5}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/SparseArray;

    move-object v0, v1

    .line 199
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 200
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 201
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_ITALIC:Landroid/graphics/Typeface;

    .line 202
    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD_ITALIC:Landroid/graphics/Typeface;

    .line 203
    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 204
    const-string/jumbo v0, "serif"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 205
    const-string/jumbo v0, "monospace"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 207
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Typeface;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_ITALIC:Landroid/graphics/Typeface;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD_ITALIC:Landroid/graphics/Typeface;

    aput-object v1, v0, v5

    sput-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 243
    const-string v0, ""

    sput-object v0, Landroid/graphics/Typeface;->THEME_FONT_PATH:Ljava/lang/String;

    .line 244
    const-string v0, ""

    sput-object v0, Landroid/graphics/Typeface;->THEME_FONT_PATH_BOLD:Ljava/lang/String;

    .line 250
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->CHINESE_LANGUAGE:Ljava/lang/String;

    .line 251
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->ENGLISH_LANGUAGE:Ljava/lang/String;

    .line 407
    const-string/jumbo v0, "ro.config.hwtheme"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Landroid/graphics/Typeface;->sHwTFlipFontOn:Z

    return-void

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method private constructor <init>(I)V
    .locals 2
    .parameter "ni"

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 189
    if-nez p1, :cond_0

    .line 190
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    iput p1, p0, Landroid/graphics/Typeface;->native_instance:I

    .line 194
    invoke-static {p1}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 195
    return-void
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 4
    .parameter "family"
    .parameter "style"

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, ni:I
    if-eqz p0, :cond_2

    .line 121
    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, p1, :cond_1

    move-object v2, p0

    .line 145
    :cond_0
    :goto_0
    return-object v2

    .line 125
    :cond_1
    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    .line 129
    :cond_2
    sget-object v3, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 131
    .local v1, styles:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-eqz v1, :cond_3

    .line 132
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    .line 133
    .local v2, typeface:Landroid/graphics/Typeface;
    if-nez v2, :cond_0

    .line 138
    .end local v2           #typeface:Landroid/graphics/Typeface;
    :cond_3
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/Typeface;-><init>(I)V

    .line 139
    .restart local v2       #typeface:Landroid/graphics/Typeface;
    if-nez v1, :cond_4

    .line 140
    new-instance v1, Landroid/util/SparseArray;

    .end local v1           #styles:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    const/4 v3, 0x4

    invoke-direct {v1, v3}, Landroid/util/SparseArray;-><init>(I)V

    .line 141
    .restart local v1       #styles:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    sget-object v3, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    :cond_4
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 2
    .parameter "familyName"
    .parameter "style"

    .prologue
    .line 103
    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .parameter "mgr"
    .parameter "path"

    .prologue
    .line 164
    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->nativeCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .locals 2
    .parameter "path"

    .prologue
    .line 174
    new-instance v0, Landroid/graphics/Typeface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .parameter "path"

    .prologue
    .line 184
    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 1
    .parameter "style"

    .prologue
    .line 154
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    return-object v0
.end method

.method private static getThemeFontPath()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 279
    const-string v8, "/data/skin/fonts/"

    sput-object v8, Landroid/graphics/Typeface;->THEME_FONT_PATH:Ljava/lang/String;

    .line 280
    new-instance v3, Ljava/io/File;

    sget-object v8, Landroid/graphics/Typeface;->THEME_FONT_PATH:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    .local v3, fontBaseDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 283
    new-instance v8, Landroid/graphics/Typeface$1;

    invoke-direct {v8}, Landroid/graphics/Typeface$1;-><init>()V

    invoke-virtual {v3, v8}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v4

    .line 289
    .local v4, fontFiles:[Ljava/io/File;
    if-eqz v4, :cond_0

    array-length v8, v4

    if-gtz v8, :cond_2

    .line 290
    :cond_0
    const-string v8, ""

    sput-object v8, Landroid/graphics/Typeface;->THEME_FONT_PATH:Ljava/lang/String;

    .line 291
    const-string v8, ""

    sput-object v8, Landroid/graphics/Typeface;->THEME_FONT_PATH_BOLD:Ljava/lang/String;

    .line 322
    .end local v4           #fontFiles:[Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 294
    .restart local v4       #fontFiles:[Ljava/io/File;
    :cond_2
    new-instance v8, Landroid/graphics/Typeface$2;

    invoke-direct {v8}, Landroid/graphics/Typeface$2;-><init>()V

    invoke-static {v4, v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 304
    const/4 v2, 0x0

    .line 305
    .local v2, fileName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 306
    .local v5, fontPrefixName:Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_4

    aget-object v1, v0, v6

    .line 307
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 308
    const-string v8, ".ttf"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "-Regular.ttf"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    :cond_3
    const-string v8, "-Bold.ttf"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "-Italic.ttf"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "-BoldItalic.ttf"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 311
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/skin/fonts/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Landroid/graphics/Typeface;->THEME_FONT_PATH:Ljava/lang/String;

    .line 312
    const-string v8, "-Regular.ttf"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 313
    const-string v8, "-Regular.ttf"

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 320
    .end local v1           #file:Ljava/io/File;
    :cond_4
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/skin/fonts/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-Bold.ttf"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Landroid/graphics/Typeface;->THEME_FONT_PATH_BOLD:Ljava/lang/String;

    goto :goto_0

    .line 315
    .restart local v1       #file:Ljava/io/File;
    :cond_5
    const-string v8, ".ttf"

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 317
    goto :goto_2

    .line 306
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method private static isTargetLangs()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 254
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, lang:Ljava/lang/String;
    sget-object v2, Landroid/graphics/Typeface;->CHINESE_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v1

    .line 258
    :cond_1
    sget-object v2, Landroid/graphics/Typeface;->ENGLISH_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 261
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static native nativeCreate(Ljava/lang/String;I)I
.end method

.method private static native nativeCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)I
.end method

.method private static native nativeCreateFromFile(Ljava/lang/String;)I
.end method

.method private static native nativeCreateFromTypeface(II)I
.end method

.method private static native nativeGetStyle(I)I
.end method

.method private static native nativeUnref(I)V
.end method

.method public static native setGammaForText(FF)V
.end method

.method public static setThemeFont(Ljava/lang/String;)V
    .locals 1
    .parameter "sAppName"

    .prologue
    .line 266
    sget-boolean v0, Landroid/graphics/Typeface;->sHwTFlipFontOn:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/graphics/Typeface;->wantsThemeFont(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-static {}, Landroid/graphics/Typeface;->setThemeFontTypeface()V

    .line 269
    :cond_0
    return-void
.end method

.method private static setThemeFontTypeface()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 325
    const/4 v2, 0x0

    .line 326
    .local v2, typefaceNative:I
    const/4 v0, 0x0

    .line 327
    .local v0, fontFile:Ljava/io/File;
    const/4 v1, 0x0

    .line 329
    .local v1, fontFileBold:Ljava/io/File;
    invoke-static {}, Landroid/graphics/Typeface;->getThemeFontPath()V

    .line 333
    new-instance v0, Ljava/io/File;

    .end local v0           #fontFile:Ljava/io/File;
    sget-object v3, Landroid/graphics/Typeface;->THEME_FONT_PATH:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 334
    .restart local v0       #fontFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    .end local v1           #fontFileBold:Ljava/io/File;
    sget-object v3, Landroid/graphics/Typeface;->THEME_FONT_PATH_BOLD:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    .restart local v1       #fontFileBold:Ljava/io/File;
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v2, v3, Landroid/graphics/Typeface;->native_instance:I

    .line 337
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 338
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/Typeface;->THEME_FONT_PATH:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Landroid/graphics/Typeface;->native_instance:I

    .line 342
    :goto_0
    invoke-static {v2}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 345
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget v2, v3, Landroid/graphics/Typeface;->native_instance:I

    .line 346
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 347
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->THEME_FONT_PATH_BOLD:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->native_instance:I

    .line 355
    :goto_1
    invoke-static {v2}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 358
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_ITALIC:Landroid/graphics/Typeface;

    iget v2, v3, Landroid/graphics/Typeface;->native_instance:I

    .line 359
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_ITALIC:Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v4, v4, Landroid/graphics/Typeface;->native_instance:I

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->native_instance:I

    .line 360
    invoke-static {v2}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 363
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD_ITALIC:Landroid/graphics/Typeface;

    iget v2, v3, Landroid/graphics/Typeface;->native_instance:I

    .line 364
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD_ITALIC:Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v4, v4, Landroid/graphics/Typeface;->native_instance:I

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->native_instance:I

    .line 365
    invoke-static {v2}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 368
    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iget v2, v3, Landroid/graphics/Typeface;->native_instance:I

    .line 369
    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v4, v4, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v4, v6}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->native_instance:I

    .line 370
    invoke-static {v2}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 382
    return-void

    .line 340
    :cond_0
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v3, v4

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v6}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v3

    iput v3, v5, Landroid/graphics/Typeface;->native_instance:I

    goto :goto_0

    .line 349
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 350
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sget-object v4, Landroid/graphics/Typeface;->THEME_FONT_PATH:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->native_instance:I

    goto :goto_1

    .line 352
    :cond_2
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Typeface;->native_instance:I

    goto :goto_1
.end method

.method private static wantsThemeFont(Ljava/lang/String;)Z
    .locals 1
    .parameter "appName"

    .prologue
    .line 275
    invoke-static {}, Landroid/graphics/Typeface;->isTargetLangs()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 226
    if-ne p0, p1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v1

    .line 227
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 229
    check-cast v0, Landroid/graphics/Typeface;

    .line 231
    .local v0, typeface:Landroid/graphics/Typeface;
    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    iget v4, v0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/graphics/Typeface;->native_instance:I

    iget v4, v0, Landroid/graphics/Typeface;->native_instance:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 218
    :try_start_0
    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Typeface;->nativeUnref(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 222
    return-void

    .line 220
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 236
    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    .line 237
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int v0, v1, v2

    .line 238
    return v0
.end method

.method public final isBold()Z
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isItalic()Z
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
