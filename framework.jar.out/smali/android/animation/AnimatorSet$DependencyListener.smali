.class Landroid/animation/AnimatorSet$DependencyListener;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DependencyListener"
.end annotation


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mNode:Landroid/animation/AnimatorSet$Node;

.field private mRule:I


# direct methods
.method public constructor <init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet$Node;I)V
    .locals 0
    .parameter "animatorSet"
    .parameter "node"
    .parameter "rule"

    .prologue
    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    iput-object p1, p0, Landroid/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 649
    iput-object p2, p0, Landroid/animation/AnimatorSet$DependencyListener;->mNode:Landroid/animation/AnimatorSet$Node;

    .line 650
    iput p3, p0, Landroid/animation/AnimatorSet$DependencyListener;->mRule:I

    .line 651
    return-void
.end method

.method private startIfReady(Landroid/animation/Animator;)V
    .locals 6
    .parameter "dependencyAnimation"

    .prologue
    .line 692
    iget-object v4, p0, Landroid/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-boolean v4, v4, Landroid/animation/AnimatorSet;->mTerminated:Z

    if-eqz v4, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    const/4 v1, 0x0

    .line 697
    .local v1, dependencyToRemove:Landroid/animation/AnimatorSet$Dependency;
    iget-object v4, p0, Landroid/animation/AnimatorSet$DependencyListener;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v4, v4, Landroid/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 698
    .local v3, numDependencies:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 699
    iget-object v4, p0, Landroid/animation/AnimatorSet$DependencyListener;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v4, v4, Landroid/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Dependency;

    .line 700
    .local v0, dependency:Landroid/animation/AnimatorSet$Dependency;
    iget v4, v0, Landroid/animation/AnimatorSet$Dependency;->rule:I

    iget v5, p0, Landroid/animation/AnimatorSet$DependencyListener;->mRule:I

    if-ne v4, v5, :cond_3

    iget-object v4, v0, Landroid/animation/AnimatorSet$Dependency;->node:Landroid/animation/AnimatorSet$Node;

    iget-object v4, v4, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    if-ne v4, p1, :cond_3

    .line 704
    move-object v1, v0

    .line 705
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 709
    .end local v0           #dependency:Landroid/animation/AnimatorSet$Dependency;
    :cond_2
    iget-object v4, p0, Landroid/animation/AnimatorSet$DependencyListener;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v4, v4, Landroid/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 710
    iget-object v4, p0, Landroid/animation/AnimatorSet$DependencyListener;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v4, v4, Landroid/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 712
    iget-object v4, p0, Landroid/animation/AnimatorSet$DependencyListener;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v4, v4, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    .line 713
    iget-object v4, p0, Landroid/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Landroid/animation/AnimatorSet;

    #getter for: Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/animation/AnimatorSet;->access$000(Landroid/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Landroid/animation/AnimatorSet$DependencyListener;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v5, v5, Landroid/animation/AnimatorSet$Node;->animation:Landroid/animation/Animator;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 698
    .restart local v0       #dependency:Landroid/animation/AnimatorSet$Dependency;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 659
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 665
    iget v0, p0, Landroid/animation/AnimatorSet$DependencyListener;->mRule:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 666
    invoke-direct {p0, p1}, Landroid/animation/AnimatorSet$DependencyListener;->startIfReady(Landroid/animation/Animator;)V

    .line 668
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 674
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 680
    iget v0, p0, Landroid/animation/AnimatorSet$DependencyListener;->mRule:I

    if-nez v0, :cond_0

    .line 681
    invoke-direct {p0, p1}, Landroid/animation/AnimatorSet$DependencyListener;->startIfReady(Landroid/animation/Animator;)V

    .line 683
    :cond_0
    return-void
.end method
