.class Landroid/webkit/WebViewClassic$PrivateHandler;
.super Landroid/os/Handler;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/webkit/WebViewInputDispatcher$UiCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrivateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter

    .prologue
    .line 8571
    iput-object p1, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPreviousHitTest()V
    .locals 2

    .prologue
    .line 9076
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v1, 0x0

    #calls: Landroid/webkit/WebViewClassic;->setHitTestResult(Landroid/webkit/WebViewCore$WebKitHitTest;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic;->access$7700(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)V

    .line 9077
    return-void
.end method

.method public dispatchUiEvent(Landroid/view/MotionEvent;II)V
    .locals 1
    .parameter "event"
    .parameter "eventType"
    .parameter "flags"

    .prologue
    .line 9038
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->onHandleUiEvent(Landroid/view/MotionEvent;II)V
    invoke-static {v0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->access$9500(Landroid/webkit/WebViewClassic;Landroid/view/MotionEvent;II)V

    .line 9039
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 9043
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getUiLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 9033
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$PrivateHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 45
    .parameter "msg"

    .prologue
    .line 8575
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v8, 0x75

    if-eq v3, v8, :cond_0

    .line 8576
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/4 v8, 0x1

    if-lt v3, v8, :cond_2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v8, 0xb

    if-gt v3, v8, :cond_2

    .line 8578
    const-string/jumbo v3, "webview"

    sget-object v8, Landroid/webkit/WebViewClassic;->HandlerPrivateDebugString:[Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x1

    aget-object v8, v8, v42

    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8588
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$1700(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v3

    if-nez v3, :cond_4

    .line 9029
    :cond_1
    :goto_1
    return-void

    .line 8580
    :cond_2
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v8, 0x65

    if-lt v3, v8, :cond_3

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v8, 0x83

    if-gt v3, v8, :cond_3

    .line 8582
    const-string/jumbo v3, "webview"

    sget-object v8, Landroid/webkit/WebViewClassic;->HandlerPackageDebugString:[Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x65

    aget-object v8, v8, v42

    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8585
    :cond_3
    const-string/jumbo v3, "webview"

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8592
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$4200(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v8, 0x6b

    if-ne v3, v8, :cond_1

    .line 8597
    :cond_5
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 9026
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 8599
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$4000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewDatabaseClassic;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v42, "host"

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v42

    const-string/jumbo v43, "username"

    invoke-virtual/range {v42 .. v43}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v43

    const-string/jumbo v44, "password"

    invoke-virtual/range {v43 .. v44}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    invoke-virtual {v3, v8, v0, v1}, Landroid/webkit/WebViewDatabaseClassic;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8603
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 8607
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$4000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewDatabaseClassic;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v42, "host"

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    invoke-virtual {v3, v8, v0, v1}, Landroid/webkit/WebViewDatabaseClassic;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8608
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 8612
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollX:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$4300(Landroid/webkit/WebViewClassic;)I

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollY:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$4400(Landroid/webkit/WebViewClassic;)I

    move-result v3

    if-nez v3, :cond_6

    .line 8613
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v8, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mSentAutoScrollMessage:Z
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$4502(Landroid/webkit/WebViewClassic;Z)Z

    goto/16 :goto_1

    .line 8616
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$4600(Landroid/webkit/WebViewClassic;)I

    move-result v3

    if-nez v3, :cond_7

    .line 8617
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollX:I
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$4300(Landroid/webkit/WebViewClassic;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v42, v0

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollY:I
    invoke-static/range {v42 .. v42}, Landroid/webkit/WebViewClassic;->access$4400(Landroid/webkit/WebViewClassic;)I

    move-result v42

    const/16 v43, 0x1

    const/16 v44, 0x0

    move/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v44

    #calls: Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z
    invoke-static {v3, v8, v0, v1, v2}, Landroid/webkit/WebViewClassic;->access$4700(Landroid/webkit/WebViewClassic;IIZI)Z

    .line 8622
    :goto_2
    const/16 v3, 0xb

    const-wide/16 v42, 0x10

    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-virtual {v0, v3, v1, v2}, Landroid/webkit/WebViewClassic$PrivateHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 8619
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$4800(Landroid/webkit/WebViewClassic;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v42, v0

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollX:I
    invoke-static/range {v42 .. v42}, Landroid/webkit/WebViewClassic;->access$4300(Landroid/webkit/WebViewClassic;)I

    move-result v42

    add-int v8, v8, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v42, v0

    #getter for: Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;
    invoke-static/range {v42 .. v42}, Landroid/webkit/WebViewClassic;->access$4800(Landroid/webkit/WebViewClassic;)Landroid/graphics/Rect;

    move-result-object v42

    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v43, v0

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollY:I
    invoke-static/range {v43 .. v43}, Landroid/webkit/WebViewClassic;->access$4400(Landroid/webkit/WebViewClassic;)I

    move-result v43

    add-int v42, v42, v43

    move/from16 v0, v42

    #calls: Landroid/webkit/WebViewClassic;->scrollLayerTo(II)V
    invoke-static {v3, v8, v0}, Landroid/webkit/WebViewClassic;->access$4900(Landroid/webkit/WebViewClassic;II)V

    goto :goto_2

    .line 8629
    :sswitch_3
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_8

    .line 8632
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v18

    .line 8633
    .local v18, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v18, :cond_1

    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8638
    .end local v18           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/graphics/Point;

    .line 8639
    .local v28, p:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v42, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v43, v0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/16 v44, 0x1

    move/from16 v0, v44

    if-ne v3, v0, :cond_9

    const/4 v3, 0x1

    :goto_3
    move/from16 v0, v42

    move/from16 v1, v43

    #calls: Landroid/webkit/WebViewClassic;->contentScrollTo(IIZ)V
    invoke-static {v8, v0, v1, v3}, Landroid/webkit/WebViewClassic;->access$5000(Landroid/webkit/WebViewClassic;IIZ)V

    goto/16 :goto_1

    :cond_9
    const/4 v3, 0x0

    goto :goto_3

    .line 8643
    .end local v28           #p:Landroid/graphics/Point;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/webkit/WebViewCore$ViewState;

    .line 8645
    .local v36, viewState:Landroid/webkit/WebViewCore$ViewState;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$5100(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v8

    move-object/from16 v0, v36

    iget v0, v0, Landroid/webkit/WebViewCore$ViewState;->mScrollX:I

    move/from16 v42, v0

    move-object/from16 v0, v36

    move/from16 v1, v42

    invoke-virtual {v3, v0, v8, v1}, Landroid/webkit/ZoomManager;->updateZoomRange(Landroid/webkit/WebViewCore$ViewState;II)V

    goto/16 :goto_1

    .line 8649
    .end local v36           #viewState:Landroid/webkit/WebViewCore$ViewState;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 8650
    .local v11, density:F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$5100(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/webkit/ZoomManager;->updateDefaultZoomDensity(F)V

    goto/16 :goto_1

    .line 8655
    .end local v11           #density:F
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/webkit/WebViewCore$DrawData;

    .line 8656
    .local v13, draw:Landroid/webkit/WebViewCore$DrawData;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v8, 0x1

    invoke-virtual {v3, v13, v8}, Landroid/webkit/WebViewClassic;->setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V

    goto/16 :goto_1

    .line 8661
    .end local v13           #draw:Landroid/webkit/WebViewCore$DrawData;
    :sswitch_7
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/webkit/BrowserFrame;->getRawResFilename(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 8663
    .local v14, drawableDir:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v42

    move/from16 v0, v42

    #calls: Landroid/webkit/WebViewClassic;->nativeCreate(ILjava/lang/String;Z)V
    invoke-static {v3, v8, v14, v0}, Landroid/webkit/WebViewClassic;->access$5200(Landroid/webkit/WebViewClassic;ILjava/lang/String;Z)V

    .line 8664
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$5300(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$DrawData;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 8665
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$5300(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$DrawData;

    move-result-object v8

    const/16 v42, 0x1

    move/from16 v0, v42

    invoke-virtual {v3, v8, v0}, Landroid/webkit/WebViewClassic;->setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V

    .line 8666
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v8, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$5302(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$DrawData;)Landroid/webkit/WebViewCore$DrawData;

    .line 8668
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mIsPaused:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$5400(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 8669
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mNativeClass:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$5500(Landroid/webkit/WebViewClassic;)I

    move-result v3

    const/4 v8, 0x1

    #calls: Landroid/webkit/WebViewClassic;->nativeSetPauseDrawing(IZ)V
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$5600(IZ)V

    .line 8671
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    new-instance v8, Landroid/webkit/WebViewInputDispatcher;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v42, v0

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static/range {v42 .. v42}, Landroid/webkit/WebViewClassic;->access$1700(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/webkit/WebViewCore;->getInputDispatcherCallbacks()Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;

    move-result-object v42

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v8, v0, v1}, Landroid/webkit/WebViewInputDispatcher;-><init>(Landroid/webkit/WebViewInputDispatcher$UiCallbacks;Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;)V

    #setter for: Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$5702(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewInputDispatcher;)Landroid/webkit/WebViewInputDispatcher;

    goto/16 :goto_1

    .line 8677
    .end local v14           #drawableDir:Ljava/lang/String;
    :sswitch_8
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mTextGeneration:I
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$5800(Landroid/webkit/WebViewClassic;)I

    move-result v8

    if-ne v3, v8, :cond_1

    .line 8678
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 8679
    .local v6, text:Ljava/lang/String;
    if-nez v6, :cond_c

    .line 8680
    const-string v6, ""

    .line 8682
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v3

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    if-ne v3, v8, :cond_1

    .line 8684
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v3, v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setTextAndKeepSelection(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 8689
    .end local v6           #text:Ljava/lang/String;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v43, v0

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/webkit/WebViewCore$TextSelectionData;

    move/from16 v0, v42

    move/from16 v1, v43

    #calls: Landroid/webkit/WebViewClassic;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    invoke-static {v8, v0, v1, v3}, Landroid/webkit/WebViewClassic;->access$5900(Landroid/webkit/WebViewClassic;IILandroid/webkit/WebViewCore$TextSelectionData;)V

    goto/16 :goto_1

    .line 8693
    :sswitch_a
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 8694
    .local v12, direction:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/webkit/WebView;->focusSearch(I)Landroid/view/View;

    move-result-object v15

    .line 8695
    .local v15, focusSearch:Landroid/view/View;
    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v3

    if-eq v15, v3, :cond_1

    .line 8696
    invoke-virtual {v15}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_1

    .line 8700
    .end local v12           #direction:I
    .end local v15           #focusSearch:Landroid/view/View;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$400(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_1

    .line 8703
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Landroid/graphics/Rect;

    .line 8704
    .local v30, r:Landroid/graphics/Rect;
    if-nez v30, :cond_d

    .line 8705
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto/16 :goto_1

    .line 8709
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v30

    iget v8, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v42, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v43, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v44, v0

    move/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v44

    #calls: Landroid/webkit/WebViewClassic;->viewInvalidate(IIII)V
    invoke-static {v3, v8, v0, v1, v2}, Landroid/webkit/WebViewClassic;->access$6000(Landroid/webkit/WebViewClassic;IIII)V

    goto/16 :goto_1

    .line 8714
    .end local v30           #r:Landroid/graphics/Rect;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v3

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    if-ne v3, v8, :cond_1

    .line 8715
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/widget/ArrayAdapter;

    .line 8716
    .local v9, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/webkit/AutoCompletePopup;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 8721
    .end local v9           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v3

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    if-ne v3, v8, :cond_1

    .line 8722
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/widget/ArrayAdapter;

    .line 8723
    .restart local v9       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDataListOptionsPopup:Landroid/webkit/DataListOptionsPopup;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/webkit/DataListOptionsPopup;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/webkit/DataListOptionsPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 8730
    .end local v9           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v8, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mGotCenterDown:Z
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$6102(Landroid/webkit/WebViewClassic;Z)Z

    .line 8731
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v8, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mTrackballDown:Z
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$6202(Landroid/webkit/WebViewClassic;Z)Z

    .line 8732
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->performLongClick()Z

    goto/16 :goto_1

    .line 8736
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$5700(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewInputDispatcher;

    move-result-object v8

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    :goto_4
    invoke-virtual {v8, v3}, Landroid/webkit/WebViewInputDispatcher;->setWebKitWantsTouchEvents(Z)V

    goto/16 :goto_1

    :cond_e
    const/4 v3, 0x0

    goto :goto_4

    .line 8740
    :sswitch_11
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_f

    .line 8741
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$400(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_1

    .line 8743
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v8, 0x0

    #calls: Landroid/webkit/WebViewClassic;->displaySoftKeyboard(Z)V
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$6300(Landroid/webkit/WebViewClassic;Z)V

    .line 8745
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-boolean v3, v3, Landroid/webkit/WebViewClassic;->WEBVIEW_ADJUST_PAN:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->isHwBrowser:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$6400(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8746
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v38

    .line 8747
    .local v38, viewroot:Landroid/view/ViewRootImpl;
    if-eqz v38, :cond_11

    .line 8748
    invoke-virtual/range {v38 .. v38}, Landroid/view/ViewRootImpl;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v21

    .line 8749
    .local v21, lp:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v21

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, 0xf0

    const/16 v42, 0x20

    move/from16 v0, v42

    if-ne v3, v0, :cond_10

    const/4 v3, 0x1

    :goto_5
    #setter for: Landroid/webkit/WebViewClassic;->isAdjustPan:Z
    invoke-static {v8, v3}, Landroid/webkit/WebViewClassic;->access$6502(Landroid/webkit/WebViewClassic;Z)Z

    .line 8753
    .end local v21           #lp:Landroid/view/WindowManager$LayoutParams;
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->isAdjustPan:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$6500(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8754
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v8, v8, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v42, 0x9e

    move/from16 v0, v42

    invoke-virtual {v8, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v42, 0x12c

    move-wide/from16 v0, v42

    invoke-virtual {v3, v8, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 8749
    .restart local v21       #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_10
    const/4 v3, 0x0

    goto :goto_5

    .line 8751
    .end local v21           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_11
    const-string/jumbo v3, "webview"

    const-string/jumbo v8, "viewroot = null"

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 8762
    .end local v38           #viewroot:Landroid/view/ViewRootImpl;
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v8, 0x2

    #setter for: Landroid/webkit/WebViewClassic;->mHeldMotionless:I
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$6602(Landroid/webkit/WebViewClassic;I)I

    .line 8763
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto/16 :goto_1

    .line 8767
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v8

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/16 v42, 0x1

    move/from16 v0, v42

    if-ne v3, v0, :cond_12

    const/4 v3, 0x1

    :goto_7
    invoke-virtual {v8, v3}, Landroid/webkit/WebView;->setKeepScreenOn(Z)V

    goto/16 :goto_1

    :cond_12
    const/4 v3, 0x0

    goto :goto_7

    .line 8771
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$6700(Landroid/webkit/WebViewClassic;)Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 8772
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$6700(Landroid/webkit/WebViewClassic;)Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/HTML5VideoViewProxy;->exitFullScreenVideo()V

    goto/16 :goto_1

    .line 8777
    :sswitch_15
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/view/View;

    .line 8778
    .local v34, view:Landroid/view/View;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    .line 8779
    .local v27, orientation:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    .line 8781
    .local v26, npp:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->inFullScreenMode()Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$6800(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 8782
    const-string/jumbo v3, "webview"

    const-string v8, "Should not have another full screen."

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8783
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->dismissFullScreenMode()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$6900(Landroid/webkit/WebViewClassic;)V

    .line 8785
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    new-instance v8, Landroid/webkit/PluginFullScreenHolder;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-direct {v8, v0, v1, v2}, Landroid/webkit/PluginFullScreenHolder;-><init>(Landroid/webkit/WebViewClassic;II)V

    iput-object v8, v3, Landroid/webkit/WebViewClassic;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    .line 8786
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Landroid/webkit/PluginFullScreenHolder;->setContentView(Landroid/view/View;)V

    .line 8787
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v3}, Landroid/webkit/PluginFullScreenHolder;->show()V

    .line 8788
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto/16 :goto_1

    .line 8793
    .end local v26           #npp:I
    .end local v27           #orientation:I
    .end local v34           #view:Landroid/view/View;
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->dismissFullScreenMode()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$6900(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_1

    .line 8797
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/webkit/WebViewCore$ShowRectData;

    .line 8798
    .local v10, data:Landroid/webkit/WebViewCore$ShowRectData;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v8, v10, Landroid/webkit/WebViewCore$ShowRectData;->mLeft:I

    invoke-virtual {v3, v8}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v20

    .line 8799
    .local v20, left:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v8, v10, Landroid/webkit/WebViewCore$ShowRectData;->mWidth:I

    invoke-virtual {v3, v8}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v39

    .line 8800
    .local v39, width:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v8, v10, Landroid/webkit/WebViewCore$ShowRectData;->mContentWidth:I

    invoke-virtual {v3, v8}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v25

    .line 8801
    .local v25, maxWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v37

    .line 8802
    .local v37, viewWidth:I
    move/from16 v0, v20

    int-to-float v3, v0

    iget v8, v10, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInDoc:F

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v42, v0

    mul-float v8, v8, v42

    add-float/2addr v3, v8

    iget v8, v10, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInView:F

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v42, v0

    mul-float v8, v8, v42

    sub-float/2addr v3, v8

    float-to-int v0, v3

    move/from16 v40, v0

    .line 8805
    .local v40, x:I
    const-string/jumbo v3, "webview"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "showRectMsg=(left="

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v42, ",width="

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v42, ",maxWidth="

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v42, ",viewWidth="

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v42, ",x="

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v42, ",xPercentInDoc="

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v0, v10, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInDoc:F

    move/from16 v42, v0

    move/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v42, ",xPercentInView="

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v0, v10, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInView:F

    move/from16 v42, v0

    move/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v42, ")"

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8813
    const/4 v3, 0x0

    add-int v8, v40, v37

    move/from16 v0, v25

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int v8, v8, v37

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v40

    .line 8815
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v8, v10, Landroid/webkit/WebViewCore$ShowRectData;->mTop:I

    invoke-virtual {v3, v8}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v33

    .line 8816
    .local v33, top:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v8, v10, Landroid/webkit/WebViewCore$ShowRectData;->mHeight:I

    invoke-virtual {v3, v8}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v16

    .line 8817
    .local v16, height:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v8, v10, Landroid/webkit/WebViewCore$ShowRectData;->mContentHeight:I

    invoke-virtual {v3, v8}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v24

    .line 8818
    .local v24, maxHeight:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v35

    .line 8819
    .local v35, viewHeight:I
    move/from16 v0, v33

    int-to-float v3, v0

    iget v8, v10, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v42, v0

    mul-float v8, v8, v42

    add-float/2addr v3, v8

    iget v8, v10, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInView:F

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v42, v0

    mul-float v8, v8, v42

    sub-float/2addr v3, v8

    float-to-int v0, v3

    move/from16 v41, v0

    .line 8822
    .local v41, y:I
    const-string/jumbo v3, "webview"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "showRectMsg=(top="

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v33

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v42, ",height="

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v42, ",maxHeight="

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v42, ",viewHeight="

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v42, ",y="

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v42, ",yPercentInDoc="

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v0, v10, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    move/from16 v42, v0

    move/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v42, ",yPercentInView="

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v0, v10, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInView:F

    move/from16 v42, v0

    move/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v42, ")"

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8830
    const/4 v3, 0x0

    add-int v8, v41, v35

    move/from16 v0, v24

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int v8, v8, v35

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v41

    .line 8834
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->getVisibleTitleHeightImpl()I
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$7000(Landroid/webkit/WebViewClassic;)I

    move-result v8

    sub-int v8, v41, v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v41

    .line 8835
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v3

    move/from16 v0, v40

    move/from16 v1, v41

    invoke-virtual {v3, v0, v1}, Landroid/webkit/WebView;->scrollTo(II)V

    goto/16 :goto_1

    .line 8840
    .end local v10           #data:Landroid/webkit/WebViewCore$ShowRectData;
    .end local v16           #height:I
    .end local v20           #left:I
    .end local v24           #maxHeight:I
    .end local v25           #maxWidth:I
    .end local v33           #top:I
    .end local v35           #viewHeight:I
    .end local v37           #viewWidth:I
    .end local v39           #width:I
    .end local v40           #x:I
    .end local v41           #y:I
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v8, v3}, Landroid/webkit/WebViewClassic;->centerFitRect(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 8844
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    #setter for: Landroid/webkit/WebViewClassic;->mHorizontalScrollBarMode:I
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$7102(Landroid/webkit/WebViewClassic;I)I

    .line 8845
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    #setter for: Landroid/webkit/WebViewClassic;->mVerticalScrollBarMode:I
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$7202(Landroid/webkit/WebViewClassic;I)I

    goto/16 :goto_1

    .line 8849
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->isAccessibilityInjectionEnabled()Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$7300(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8850
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$7400(Landroid/webkit/WebViewClassic;)Landroid/webkit/AccessibilityInjector;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v3}, Landroid/webkit/AccessibilityInjector;->handleSelectionChangedIfNecessary(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 8856
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v42, v0

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static/range {v42 .. v42}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v42

    move/from16 v0, v42

    if-ne v3, v0, :cond_16

    const/4 v3, 0x1

    :goto_8
    iput-boolean v3, v8, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    .line 8857
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-boolean v3, v3, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-nez v3, :cond_14

    .line 8858
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/AutoCompletePopup;->clearAdapter()V

    .line 8861
    :cond_14
    const-string/jumbo v3, "webview"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "FOCUS_NODE_CHANGED hit="

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8864
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDataListOptionsPopup:Landroid/webkit/DataListOptionsPopup;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/webkit/DataListOptionsPopup;

    move-result-object v3

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-boolean v3, v3, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-nez v3, :cond_15

    .line 8865
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDataListOptionsPopup:Landroid/webkit/DataListOptionsPopup;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/webkit/DataListOptionsPopup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/DataListOptionsPopup;->clearAdapter()V

    .line 8870
    :cond_15
    :sswitch_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/webkit/WebViewCore$WebKitHitTest;

    .line 8871
    .local v17, hit:Landroid/webkit/WebViewCore$WebKitHitTest;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v17

    #setter for: Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;
    invoke-static {v3, v0}, Landroid/webkit/WebViewClassic;->access$7502(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)Landroid/webkit/WebViewCore$WebKitHitTest;

    .line 8872
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v17

    #calls: Landroid/webkit/WebViewClassic;->setTouchHighlightRects(Landroid/webkit/WebViewCore$WebKitHitTest;)V
    invoke-static {v3, v0}, Landroid/webkit/WebViewClassic;->access$7600(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)V

    .line 8873
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v17

    #calls: Landroid/webkit/WebViewClassic;->setHitTestResult(Landroid/webkit/WebViewCore$WebKitHitTest;)V
    invoke-static {v3, v0}, Landroid/webkit/WebViewClassic;->access$7700(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)V

    goto/16 :goto_1

    .line 8856
    .end local v17           #hit:Landroid/webkit/WebViewCore$WebKitHitTest;
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 8877
    :sswitch_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;

    .line 8878
    .local v32, saveMessage:Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;
    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;->mCallback:Landroid/webkit/ValueCallback;

    if-eqz v3, :cond_1

    .line 8879
    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;->mCallback:Landroid/webkit/ValueCallback;

    move-object/from16 v0, v32

    iget-object v8, v0, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;->mResultFile:Ljava/lang/String;

    invoke-interface {v3, v8}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 8884
    .end local v32           #saveMessage:Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/webkit/WebViewCore$AutoFillData;

    #setter for: Landroid/webkit/WebViewClassic;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;
    invoke-static {v8, v3}, Landroid/webkit/WebViewClassic;->access$3902(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$AutoFillData;)Landroid/webkit/WebViewCore$AutoFillData;

    .line 8885
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v3, :cond_1

    .line 8886
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$3900(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$AutoFillData;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/WebViewCore$AutoFillData;->getQueryId()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setAutoFillable(I)V

    .line 8887
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$3900(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$AutoFillData;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/WebViewCore$AutoFillData;->getQueryId()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/webkit/AutoCompletePopup;->setAutoFillQueryId(I)V

    goto/16 :goto_1

    .line 8892
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 8893
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 8894
    .local v29, pastEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v3

    new-instance v8, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v42, v0

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v42

    const v43, 0x10900e5

    move-object/from16 v0, v42

    move/from16 v1, v43

    move-object/from16 v2, v29

    invoke-direct {v8, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v3, v8}, Landroid/webkit/AutoCompletePopup;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 8902
    .end local v29           #pastEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #calls: Landroid/webkit/WebViewClassic;->copyToClipboard(Ljava/lang/String;)V
    invoke-static {v8, v3}, Landroid/webkit/WebViewClassic;->access$7800(Landroid/webkit/WebViewClassic;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 8906
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v3, :cond_1

    .line 8907
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/webkit/WebViewCore$TextFieldInitData;

    .line 8908
    .local v19, initData:Landroid/webkit/WebViewCore$TextFieldInitData;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v8, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mTextGeneration:I
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$5802(Landroid/webkit/WebViewClassic;I)I

    .line 8909
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v19

    iget v8, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mFieldPointer:I

    #setter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$102(Landroid/webkit/WebViewClassic;I)I

    .line 8910
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->initEditorInfo(Landroid/webkit/WebViewCore$TextFieldInitData;)V

    .line 8911
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    move-object/from16 v0, v19

    iget-object v8, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mText:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setTextAndKeepSelection(Ljava/lang/CharSequence;)V

    .line 8912
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v19

    iget-object v8, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8913
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v19

    iget v8, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mNodeLayerId:I

    iput v8, v3, Landroid/webkit/WebViewClassic;->mEditTextLayerId:I

    .line 8914
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mNativeClass:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$5500(Landroid/webkit/WebViewClassic;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v8, v8, Landroid/webkit/WebViewClassic;->mEditTextLayerId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    #calls: Landroid/webkit/WebViewClassic;->nativeMapLayerRect(IILandroid/graphics/Rect;)V
    invoke-static {v3, v8, v0}, Landroid/webkit/WebViewClassic;->access$7900(IILandroid/graphics/Rect;)V

    .line 8916
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v3, v3, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    move-object/from16 v0, v19

    iget-object v8, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mClientRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8917
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->relocateAutoCompletePopup()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8000(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_1

    .line 8922
    .end local v19           #initData:Landroid/webkit/WebViewCore$TextFieldInitData;
    :sswitch_22
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 8923
    .restart local v6       #text:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 8924
    .local v4, start:I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    .line 8925
    .local v5, end:I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    add-int v7, v4, v3

    .line 8926
    .local v7, cursorPosition:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move v8, v7

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebViewClassic;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 8928
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto/16 :goto_1

    .line 8933
    .end local v4           #start:I
    .end local v5           #end:I
    .end local v6           #text:Ljava/lang/String;
    .end local v7           #cursorPosition:I
    :sswitch_23
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/webkit/WebViewCore$FindAllRequest;

    .line 8934
    .local v31, request:Landroid/webkit/WebViewCore$FindAllRequest;
    if-nez v31, :cond_17

    .line 8935
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8100(Landroid/webkit/WebViewClassic;)Landroid/webkit/FindActionModeCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 8936
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8100(Landroid/webkit/WebViewClassic;)Landroid/webkit/FindActionModeCallback;

    move-result-object v3

    const/4 v8, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v3, v8, v0, v1}, Landroid/webkit/FindActionModeCallback;->updateMatchCount(IIZ)V

    goto/16 :goto_1

    .line 8938
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$FindAllRequest;

    move-result-object v3

    move-object/from16 v0, v31

    if-ne v0, v3, :cond_1

    .line 8940
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$FindAllRequest;

    move-result-object v8

    monitor-enter v8

    .line 8941
    :try_start_0
    move-object/from16 v0, v31

    iget v0, v0, Landroid/webkit/WebViewCore$FindAllRequest;->mMatchCount:I

    move/from16 v22, v0

    .line 8942
    .local v22, matchCount:I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/webkit/WebViewCore$FindAllRequest;->mMatchIndex:I

    move/from16 v23, v0

    .line 8943
    .local v23, matchIndex:I
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8944
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8100(Landroid/webkit/WebViewClassic;)Landroid/webkit/FindActionModeCallback;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 8945
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8100(Landroid/webkit/WebViewClassic;)Landroid/webkit/FindActionModeCallback;

    move-result-object v3

    const/4 v8, 0x0

    move/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1, v8}, Landroid/webkit/FindActionModeCallback;->updateMatchCount(IIZ)V

    .line 8947
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindListener:Landroid/webkit/WebView$FindListener;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8300(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView$FindListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 8948
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindListener:Landroid/webkit/WebView$FindListener;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8300(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView$FindListener;

    move-result-object v3

    const/4 v8, 0x1

    move/from16 v0, v23

    move/from16 v1, v22

    invoke-interface {v3, v0, v1, v8}, Landroid/webkit/WebView$FindListener;->onFindResultReceived(IIZ)V

    goto/16 :goto_1

    .line 8943
    .end local v22           #matchCount:I
    .end local v23           #matchIndex:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 8955
    .end local v31           #request:Landroid/webkit/WebViewCore$FindAllRequest;
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8400(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8956
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto/16 :goto_1

    .line 8961
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/16 v8, 0xdf

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move/from16 v0, v42

    move/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v3, v8, v0, v1, v2}, Landroid/webkit/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    goto/16 :goto_1

    .line 8965
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->relocateAutoCompletePopup()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8000(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_1

    .line 8969
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$1700(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v8, 0xc0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    const/16 v43, 0x0

    move/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v3, v8, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto/16 :goto_1

    .line 8974
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$1700(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v8, 0xeb

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    const/16 v43, 0x0

    move/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v3, v8, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto/16 :goto_1

    .line 8979
    :sswitch_29
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v8

    if-ne v3, v8, :cond_1

    .line 8980
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v8, v3, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v8, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 8985
    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8500(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-boolean v3, v3, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8400(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8986
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->setupWebkitSelect()Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8600(Landroid/webkit/WebViewClassic;)Z

    .line 8987
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->resetCaretTimer()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8700(Landroid/webkit/WebViewClassic;)V

    .line 8988
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->showPasteWindow()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8800(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_1

    .line 8993
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v8, v3, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v8, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8994
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mNativeClass:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$5500(Landroid/webkit/WebViewClassic;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v8, v8, Landroid/webkit/WebViewClassic;->mEditTextLayerId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    #calls: Landroid/webkit/WebViewClassic;->nativeMapLayerRect(IILandroid/graphics/Rect;)V
    invoke-static {v3, v8, v0}, Landroid/webkit/WebViewClassic;->access$7900(IILandroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 8999
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->scrollEditWithCursor()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8900(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_1

    .line 9003
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->scrollDraggedSelectionHandleIntoView()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$9000(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_1

    .line 9008
    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move/from16 v0, v42

    #calls: Landroid/webkit/WebViewClassic;->requestDateTimePicker(ILjava/lang/String;)V
    invoke-static {v8, v0, v3}, Landroid/webkit/WebViewClassic;->access$9100(Landroid/webkit/WebViewClassic;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 9014
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewClassic;->requestColorPicker(I)V
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$9200(Landroid/webkit/WebViewClassic;I)V

    goto/16 :goto_1

    .line 9019
    :sswitch_30
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->resetContentHight()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$9300(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_1

    .line 9022
    :sswitch_31
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v8, 0x1

    #calls: Landroid/webkit/WebViewClassic;->scrollEditIntoView(Z)V
    invoke-static {v3, v8}, Landroid/webkit/WebViewClassic;->access$9400(Landroid/webkit/WebViewClassic;Z)V

    goto/16 :goto_1

    .line 8597
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x6 -> :sswitch_d
        0x8 -> :sswitch_12
        0xb -> :sswitch_2
        0xc -> :sswitch_e
        0x65 -> :sswitch_3
        0x69 -> :sswitch_6
        0x6b -> :sswitch_7
        0x6c -> :sswitch_8
        0x6d -> :sswitch_4
        0x6e -> :sswitch_a
        0x6f -> :sswitch_b
        0x70 -> :sswitch_9
        0x71 -> :sswitch_17
        0x72 -> :sswitch_f
        0x74 -> :sswitch_10
        0x75 -> :sswitch_c
        0x76 -> :sswitch_11
        0x78 -> :sswitch_15
        0x79 -> :sswitch_16
        0x7e -> :sswitch_23
        0x7f -> :sswitch_18
        0x81 -> :sswitch_19
        0x82 -> :sswitch_1a
        0x83 -> :sswitch_1c
        0x84 -> :sswitch_1d
        0x85 -> :sswitch_1e
        0x86 -> :sswitch_1f
        0x88 -> :sswitch_13
        0x8b -> :sswitch_5
        0x8c -> :sswitch_14
        0x8d -> :sswitch_20
        0x8e -> :sswitch_21
        0x8f -> :sswitch_22
        0x90 -> :sswitch_24
        0x91 -> :sswitch_25
        0x92 -> :sswitch_26
        0x93 -> :sswitch_1b
        0x94 -> :sswitch_27
        0x95 -> :sswitch_2c
        0x96 -> :sswitch_29
        0x97 -> :sswitch_2a
        0x98 -> :sswitch_2b
        0x99 -> :sswitch_2d
        0x9a -> :sswitch_28
        0x9b -> :sswitch_2e
        0x9c -> :sswitch_2f
        0x9d -> :sswitch_30
        0x9e -> :sswitch_31
    .end sparse-switch
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 9048
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8500(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 9063
    :goto_0
    return v0

    .line 9051
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->ensureSelectionHandles()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$800(Landroid/webkit/WebViewClassic;)V

    .line 9052
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 9053
    .local v2, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 9055
    .local v1, x:I
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8400(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9056
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .local v0, isPressingHandle:Z
    goto :goto_0

    .line 9059
    .end local v0           #isPressingHandle:Z
    :cond_1
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectHandleBaseBounds:Landroid/graphics/Rect;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$9600(Landroid/webkit/WebViewClassic;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectHandleExtentBounds:Landroid/graphics/Rect;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$9700(Landroid/webkit/WebViewClassic;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v0, 0x1

    .restart local v0       #isPressingHandle:Z
    :cond_3
    goto :goto_0
.end method

.method public showTapHighlight(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 9068
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mShowTapHighlight:Z
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$9800(Landroid/webkit/WebViewClassic;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 9069
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #setter for: Landroid/webkit/WebViewClassic;->mShowTapHighlight:Z
    invoke-static {v0, p1}, Landroid/webkit/WebViewClassic;->access$9802(Landroid/webkit/WebViewClassic;Z)Z

    .line 9070
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 9072
    :cond_0
    return-void
.end method
