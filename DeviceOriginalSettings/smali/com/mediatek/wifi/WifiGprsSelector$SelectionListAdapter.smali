.class Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;
.super Landroid/widget/BaseAdapter;
.source "WifiGprsSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wifi/WifiGprsSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mSimItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/wifi/WifiGprsSelector$SimItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mediatek/wifi/WifiGprsSelector;


# direct methods
.method public constructor <init>(Lcom/mediatek/wifi/WifiGprsSelector;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/wifi/WifiGprsSelector$SimItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 877
    .local p2, simItemList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/wifi/WifiGprsSelector$SimItem;>;"
    iput-object p1, p0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 878
    iput-object p2, p0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;->mSimItemList:Ljava/util/List;

    .line 879
    return-void
.end method

.method private setImageSim(Landroid/widget/RelativeLayout;Lcom/mediatek/wifi/WifiGprsSelector$SimItem;)V
    .locals 4
    .parameter "imageSim"
    .parameter "simItem"

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 968
    iget-boolean v1, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mIsSim:Z

    if-eqz v1, :cond_1

    .line 969
    iget-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    iget v2, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mColor:I

    invoke-virtual {v1, v2}, Lcom/mediatek/wifi/WifiGprsSelector;->getSimColorResource(I)I

    move-result v0

    .line 970
    .local v0, resColor:I
    if-ltz v0, :cond_0

    .line 971
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 972
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 980
    .end local v0           #resColor:I
    :cond_0
    :goto_0
    return-void

    .line 974
    :cond_1
    iget v1, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mColor:I

    if-ne v1, v2, :cond_2

    .line 975
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 976
    const v1, 0x20200e8

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 978
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setImageStatus(Landroid/widget/ImageView;Lcom/mediatek/wifi/WifiGprsSelector$SimItem;)V
    .locals 3
    .parameter "imageStatus"
    .parameter "simItem"

    .prologue
    .line 956
    iget-boolean v1, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mIsSim:Z

    if-eqz v1, :cond_0

    .line 957
    iget-object v1, p0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    iget v2, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mState:I

    invoke-virtual {v1, v2}, Lcom/mediatek/wifi/WifiGprsSelector;->getStatusResource(I)I

    move-result v0

    .line 958
    .local v0, res:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 959
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 966
    .end local v0           #res:I
    :cond_0
    :goto_0
    return-void

    .line 961
    .restart local v0       #res:I
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 962
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setNameAndNum(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/mediatek/wifi/WifiGprsSelector$SimItem;)V
    .locals 3
    .parameter "textName"
    .parameter "textNum"
    .parameter "simItem"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 992
    iget-object v0, p3, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 993
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 998
    :goto_0
    iget-boolean v0, p3, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mIsSim:Z

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1000
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1001
    iget-object v0, p3, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1005
    :goto_1
    return-void

    .line 995
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 996
    iget-object v0, p3, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1003
    :cond_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setTextNumFormat(Landroid/widget/TextView;Lcom/mediatek/wifi/WifiGprsSelector$SimItem;)V
    .locals 3
    .parameter "textNumFormat"
    .parameter "simItem"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 925
    iget-boolean v0, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mIsSim:Z

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 927
    iget v0, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mDispalyNumberFormat:I

    packed-switch v0, :pswitch_data_0

    .line 954
    :cond_0
    :goto_0
    return-void

    .line 929
    :pswitch_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 932
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 933
    iget-object v0, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 934
    iget-object v0, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 936
    :cond_1
    iget-object v0, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 940
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 941
    iget-object v0, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_2

    .line 942
    iget-object v0, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mNumber:Ljava/lang/String;

    iget-object v1, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 945
    :cond_2
    iget-object v0, p2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 927
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setViewHolderId(Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;Landroid/view/View;)V
    .locals 1
    .parameter "holder"
    .parameter "convertView"

    .prologue
    .line 983
    const v0, 0x7f0a0144

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mTextName:Landroid/widget/TextView;

    .line 984
    const v0, 0x7f0a0145

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mTextNum:Landroid/widget/TextView;

    .line 985
    const v0, 0x7f0a0141

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mImageStatus:Landroid/widget/ImageView;

    .line 986
    const v0, 0x7f0a0142

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mTextNumFormat:Landroid/widget/TextView;

    .line 987
    const v0, 0x7f0a0146

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mCkRadioOn:Landroid/widget/RadioButton;

    .line 988
    const v0, 0x7f0a0140

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mImageSim:Landroid/widget/RelativeLayout;

    .line 989
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;->mSimItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 886
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;->mSimItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 890
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 896
    if-nez p2, :cond_0

    .line 897
    iget-object v3, p0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 898
    .local v1, mFlater:Landroid/view/LayoutInflater;
    const v3, 0x7f04007f

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 899
    new-instance v0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;-><init>(Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;)V

    .line 900
    .local v0, holder:Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;
    invoke-direct {p0, v0, p2}, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;->setViewHolderId(Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;Landroid/view/View;)V

    .line 901
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 905
    .end local v1           #mFlater:Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;

    .line 906
    .local v2, simItem:Lcom/mediatek/wifi/WifiGprsSelector$SimItem;
    iget-object v3, v0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mTextName:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mTextNum:Landroid/widget/TextView;

    invoke-direct {p0, v3, v6, v2}, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;->setNameAndNum(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/mediatek/wifi/WifiGprsSelector$SimItem;)V

    .line 907
    iget-object v3, v0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mImageSim:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v3, v2}, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;->setImageSim(Landroid/widget/RelativeLayout;Lcom/mediatek/wifi/WifiGprsSelector$SimItem;)V

    .line 908
    iget-object v3, v0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mImageStatus:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v2}, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;->setImageStatus(Landroid/widget/ImageView;Lcom/mediatek/wifi/WifiGprsSelector$SimItem;)V

    .line 909
    iget-object v3, v0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mTextNumFormat:Landroid/widget/TextView;

    invoke-direct {p0, v3, v2}, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;->setTextNumFormat(Landroid/widget/TextView;Lcom/mediatek/wifi/WifiGprsSelector$SimItem;)V

    .line 910
    iget-object v6, v0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mCkRadioOn:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    #getter for: Lcom/mediatek/wifi/WifiGprsSelector;->mInitValue:I
    invoke-static {v3}, Lcom/mediatek/wifi/WifiGprsSelector;->access$1700(Lcom/mediatek/wifi/WifiGprsSelector;)I

    move-result v3

    if-ne v3, p1, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 911
    iget v3, v2, Lcom/mediatek/wifi/WifiGprsSelector$SimItem;->mState:I

    if-ne v3, v4, :cond_2

    .line 912
    invoke-virtual {p2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 913
    iget-object v3, v0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 914
    iget-object v3, v0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mTextNum:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 915
    iget-object v3, v0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mCkRadioOn:Landroid/widget/RadioButton;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 922
    :goto_2
    return-object p2

    .line 903
    .end local v0           #holder:Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;
    .end local v2           #simItem:Lcom/mediatek/wifi/WifiGprsSelector$SimItem;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;
    goto :goto_0

    .restart local v2       #simItem:Lcom/mediatek/wifi/WifiGprsSelector$SimItem;
    :cond_1
    move v3, v5

    .line 910
    goto :goto_1

    .line 917
    :cond_2
    invoke-virtual {p2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 918
    iget-object v3, v0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mTextName:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 919
    iget-object v3, v0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mTextNum:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 920
    iget-object v3, v0, Lcom/mediatek/wifi/WifiGprsSelector$SelectionListAdapter$ViewHolder;->mCkRadioOn:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2
.end method
