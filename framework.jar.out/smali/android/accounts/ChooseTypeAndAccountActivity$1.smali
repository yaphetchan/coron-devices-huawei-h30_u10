.class Landroid/accounts/ChooseTypeAndAccountActivity$1;
.super Ljava/lang/Object;
.source "ChooseTypeAndAccountActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/ChooseTypeAndAccountActivity;->populateUIAccountList([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/ChooseTypeAndAccountActivity;


# direct methods
.method constructor <init>(Landroid/accounts/ChooseTypeAndAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 530
    iput-object p1, p0, Landroid/accounts/ChooseTypeAndAccountActivity$1;->this$0:Landroid/accounts/ChooseTypeAndAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 533
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity$1;->this$0:Landroid/accounts/ChooseTypeAndAccountActivity;

    #setter for: Landroid/accounts/ChooseTypeAndAccountActivity;->mSelectedItemIndex:I
    invoke-static {v0, p3}, Landroid/accounts/ChooseTypeAndAccountActivity;->access$002(Landroid/accounts/ChooseTypeAndAccountActivity;I)I

    .line 534
    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity$1;->this$0:Landroid/accounts/ChooseTypeAndAccountActivity;

    #getter for: Landroid/accounts/ChooseTypeAndAccountActivity;->mOkButton:Landroid/widget/Button;
    invoke-static {v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->access$100(Landroid/accounts/ChooseTypeAndAccountActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 535
    return-void
.end method
