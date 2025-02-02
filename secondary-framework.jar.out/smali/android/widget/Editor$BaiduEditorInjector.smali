.class Landroid/widget/Editor$BaiduEditorInjector;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaiduEditorInjector"
.end annotation


# static fields
.field static final DELAY_BEFORE_SEARCH_ACTION:I = 0xc8

.field static final HANDLE_HEIGHT:I = 0x28

.field static final NONIUS_HEIGHT:I = 0x1e

.field public static mMagnifierController:Landroid/widget/MagnifierController;

.field public static mSearchText:Ljava/lang/CharSequence;

.field public static mWordSegment:Lcom/android/internal/util/WordSegment;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableMagnifier()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    sput-object v0, Landroid/widget/Editor$BaiduEditorInjector;->mMagnifierController:Landroid/widget/MagnifierController;

    .line 240
    return-void
.end method

.method public static dismiss()V
    .locals 1

    .prologue
    .line 243
    sget-object v0, Landroid/widget/Editor$BaiduEditorInjector;->mMagnifierController:Landroid/widget/MagnifierController;

    if-eqz v0, :cond_0

    .line 244
    sget-object v0, Landroid/widget/Editor$BaiduEditorInjector;->mMagnifierController:Landroid/widget/MagnifierController;

    invoke-virtual {v0}, Landroid/widget/MagnifierController;->dismiss()V

    .line 246
    :cond_0
    return-void
.end method

.method public static enableMagnifier(Landroid/widget/TextView;)V
    .locals 1
    .parameter "textView"

    .prologue
    .line 226
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    sget-object v0, Landroid/widget/Editor$BaiduEditorInjector;->mMagnifierController:Landroid/widget/MagnifierController;

    if-nez v0, :cond_2

    .line 230
    new-instance v0, Landroid/widget/MagnifierController;

    invoke-direct {v0, p0}, Landroid/widget/MagnifierController;-><init>(Landroid/widget/TextView;)V

    sput-object v0, Landroid/widget/Editor$BaiduEditorInjector;->mMagnifierController:Landroid/widget/MagnifierController;

    goto :goto_0

    .line 232
    :cond_2
    sget-object v0, Landroid/widget/Editor$BaiduEditorInjector;->mMagnifierController:Landroid/widget/MagnifierController;

    iget-object v0, v0, Landroid/widget/MagnifierController;->mParent:Landroid/widget/TextView;

    if-eq v0, p0, :cond_0

    .line 233
    new-instance v0, Landroid/widget/MagnifierController;

    invoke-direct {v0, p0}, Landroid/widget/MagnifierController;-><init>(Landroid/widget/TextView;)V

    sput-object v0, Landroid/widget/Editor$BaiduEditorInjector;->mMagnifierController:Landroid/widget/MagnifierController;

    goto :goto_0
.end method

.method public static fixCursorPostion(Landroid/widget/Editor;I)I
    .locals 7
    .parameter "editor"
    .parameter "line"

    .prologue
    .line 274
    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    .line 275
    .local v4, textView:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 276
    .local v2, layout:Landroid/text/Layout;
    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 277
    .local v0, bottom:I
    invoke-virtual {v4}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v5

    const/high16 v6, 0x3f80

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_1

    .line 278
    :cond_0
    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 279
    .local v1, displayMetrics:Landroid/util/DisplayMetrics;
    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x4080

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 281
    .local v3, offsetToBaseLine:I
    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v5

    add-int v0, v5, v3

    .line 284
    .end local v1           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v3           #offsetToBaseLine:I
    :cond_1
    return v0
.end method

.method public static hideDelayed()V
    .locals 1

    .prologue
    .line 249
    sget-object v0, Landroid/widget/Editor$BaiduEditorInjector;->mMagnifierController:Landroid/widget/MagnifierController;

    if-eqz v0, :cond_0

    .line 250
    sget-object v0, Landroid/widget/Editor$BaiduEditorInjector;->mMagnifierController:Landroid/widget/MagnifierController;

    invoke-virtual {v0}, Landroid/widget/MagnifierController;->hideDelayed()V

    .line 252
    :cond_0
    return-void
.end method

.method public static onEventWordSearch(Landroid/widget/Editor;)V
    .locals 2
    .parameter "editor"

    .prologue
    .line 222
    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "search_text"

    invoke-static {v0, v1}, Landroid/util/FeatureData;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public static onEventWordSeg(Landroid/widget/Editor;)V
    .locals 2
    .parameter "editor"

    .prologue
    .line 218
    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "seg_text"

    invoke-static {v0, v1}, Landroid/util/FeatureData;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public static update(Landroid/widget/TextView;Landroid/widget/Editor$HandleView;)V
    .locals 2
    .parameter "textView"
    .parameter "view"

    .prologue
    .line 255
    invoke-virtual {p1}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    const/4 v0, -0x1

    .line 259
    .local v0, type:I
    instance-of v1, p1, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v1, :cond_3

    .line 260
    const/4 v0, 0x1

    .line 266
    :cond_2
    :goto_1
    invoke-static {p0}, Landroid/widget/Editor$BaiduEditorInjector;->enableMagnifier(Landroid/widget/TextView;)V

    .line 267
    sget-object v1, Landroid/widget/Editor$BaiduEditorInjector;->mMagnifierController:Landroid/widget/MagnifierController;

    if-eqz v1, :cond_0

    .line 268
    sget-object v1, Landroid/widget/Editor$BaiduEditorInjector;->mMagnifierController:Landroid/widget/MagnifierController;

    invoke-virtual {v1, v0}, Landroid/widget/MagnifierController;->update(I)V

    goto :goto_0

    .line 261
    :cond_3
    instance-of v1, p1, Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v1, :cond_4

    .line 262
    const/4 v0, 0x0

    goto :goto_1

    .line 263
    :cond_4
    instance-of v1, p1, Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v1, :cond_2

    .line 264
    const/4 v0, 0x2

    goto :goto_1
.end method
