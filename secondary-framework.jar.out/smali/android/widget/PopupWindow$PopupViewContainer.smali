.class Landroid/widget/PopupWindow$PopupViewContainer;
.super Landroid/widget/FrameLayout;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupViewContainer"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupWindow.PopupViewContainer"


# instance fields
.field final synthetic this$0:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 1559
    iput-object p1, p0, Landroid/widget/PopupWindow$PopupViewContainer;->this$0:Landroid/widget/PopupWindow;

    .line 1560
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1561
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1577
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 1578
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1579
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1598
    :cond_0
    :goto_0
    return v1

    .line 1582
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 1584
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1585
    .local v0, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_0

    .line 1586
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 1589
    .end local v0           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 1590
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1591
    .restart local v0       #state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1592
    iget-object v2, p0, Landroid/widget/PopupWindow$PopupViewContainer;->this$0:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 1596
    .end local v0           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1598
    :cond_4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 1604
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupViewContainer;->this$0:Landroid/widget/PopupWindow;

    #getter for: Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Landroid/widget/PopupWindow;->access$800(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow$PopupViewContainer;->this$0:Landroid/widget/PopupWindow;

    #getter for: Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Landroid/widget/PopupWindow;->access$800(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1605
    const/4 v0, 0x1

    .line 1607
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 1565
    iget-object v1, p0, Landroid/widget/PopupWindow$PopupViewContainer;->this$0:Landroid/widget/PopupWindow;

    #getter for: Landroid/widget/PopupWindow;->mAboveAnchor:Z
    invoke-static {v1}, Landroid/widget/PopupWindow;->access$600(Landroid/widget/PopupWindow;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1567
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1568
    .local v0, drawableState:[I
    invoke-static {}, Landroid/widget/PopupWindow;->access$700()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 1571
    .end local v0           #drawableState:[I
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1612
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 1613
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 1615
    .local v1, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-ge v0, v3, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 1617
    :cond_0
    iget-object v3, p0, Landroid/widget/PopupWindow$PopupViewContainer;->this$0:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1623
    :goto_0
    return v2

    .line 1619
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1620
    iget-object v3, p0, Landroid/widget/PopupWindow$PopupViewContainer;->this$0:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 1623
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 1630
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupViewContainer;->this$0:Landroid/widget/PopupWindow;

    #getter for: Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/PopupWindow;->access$900(Landroid/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1631
    iget-object v0, p0, Landroid/widget/PopupWindow$PopupViewContainer;->this$0:Landroid/widget/PopupWindow;

    #getter for: Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/PopupWindow;->access$900(Landroid/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1635
    :goto_0
    return-void

    .line 1633
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method
