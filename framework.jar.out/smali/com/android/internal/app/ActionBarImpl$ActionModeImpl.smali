.class public Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;
.super Landroid/view/ActionMode;
.source "ActionBarImpl.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionModeImpl"
.end annotation


# instance fields
.field private mCallback:Landroid/view/ActionMode$Callback;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/android/internal/app/ActionBarImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ActionBarImpl;Landroid/view/ActionMode$Callback;)V
    .locals 2
    .parameter
    .parameter "callback"

    .prologue
    .line 852
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 853
    iput-object p2, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 854
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p1}, Lcom/android/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 856
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 857
    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 2

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 916
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 918
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 916
    return v0

    .line 918
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public finish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 871
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    iget-object v0, v0, Lcom/android/internal/app/ActionBarImpl;->mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    if-eq v0, p0, :cond_0

    .line 896
    :goto_0
    return-void

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mHiddenByApp:Z
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$700(Lcom/android/internal/app/ActionBarImpl;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mHiddenBySystem:Z
    invoke-static {v1}, Lcom/android/internal/app/ActionBarImpl;->access$800(Lcom/android/internal/app/ActionBarImpl;)Z

    move-result v1

    #calls: Lcom/android/internal/app/ActionBarImpl;->checkShowingFlags(ZZZ)Z
    invoke-static {v0, v1, v2}, Lcom/android/internal/app/ActionBarImpl;->access$900(ZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 883
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    iput-object p0, v0, Lcom/android/internal/app/ActionBarImpl;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    .line 884
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    iput-object v1, v0, Lcom/android/internal/app/ActionBarImpl;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    .line 888
    :goto_1
    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    .line 889
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ActionBarImpl;->animateToMode(Z)V

    .line 892
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1000(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->closeMode()V

    .line 893
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1100(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarView;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->sendAccessibilityEvent(I)V

    .line 895
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    iput-object v3, v0, Lcom/android/internal/app/ActionBarImpl;->mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    goto :goto_0

    .line 886
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    goto :goto_1
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 861
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1000(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1000(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    if-nez v0, :cond_0

    .line 911
    :goto_0
    return-void

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 907
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1000(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 983
    return-void
.end method

.method public onCloseSubMenu(Lcom/android/internal/view/menu/SubMenuBuilder;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 999
    return-void
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    .line 978
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    if-nez v0, :cond_0

    .line 1007
    :goto_0
    return-void

    .line 1005
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->invalidate()V

    .line 1006
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1000(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 3
    .parameter "subMenu"

    .prologue
    const/4 v0, 0x1

    .line 986
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mCallback:Landroid/view/ActionMode$Callback;

    if-nez v1, :cond_1

    .line 987
    const/4 v0, 0x0

    .line 995
    :cond_0
    :goto_0
    return v0

    .line 990
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 994
    new-instance v1, Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v2}, Lcom/android/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->show()V

    goto :goto_0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1000(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 925
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    .line 926
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1200(Lcom/android/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 946
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "subtitle"

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1000(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 931
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1200(Lcom/android/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 941
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1000(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 936
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1
    .parameter "titleOptional"

    .prologue
    .line 960
    invoke-super {p0, p1}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 961
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1000(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 962
    return-void
.end method
