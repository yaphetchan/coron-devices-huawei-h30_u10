.class public Landroid/widget/AppSecurityPermissions;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;,
        Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;,
        Landroid/widget/AppSecurityPermissions$PermissionItemView;,
        Landroid/widget/AppSecurityPermissions$MyPermissionInfo;,
        Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppSecurityPermissions"

.field public static final WHICH_ALL:I = 0xffff

.field public static final WHICH_DEVICE:I = 0x2

.field public static final WHICH_NEW:I = 0x4

.field public static final WHICH_PERSONAL:I = 0x1

.field private static final localLOGV:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDangerousIcon:Landroid/graphics/drawable/Drawable;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInstalledPackageInfo:Landroid/content/pm/PackageInfo;

.field private mNewPermPrefix:Ljava/lang/CharSequence;

.field private mNormalIcon:Landroid/graphics/drawable/Drawable;

.field private final mPermComparator:Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;

.field private final mPermGroupComparator:Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;

.field private final mPermGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermGroupsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPermsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 9
    .parameter "context"
    .parameter "info"

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    .line 75
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    .line 279
    iput-object p1, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    .line 280
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    .line 281
    invoke-direct {p0}, Landroid/widget/AppSecurityPermissions;->loadResources()V

    .line 282
    new-instance v6, Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;

    invoke-direct {v6}, Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;-><init>()V

    iput-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPermComparator:Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;

    .line 283
    new-instance v6, Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;

    invoke-direct {v6}, Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;-><init>()V

    iput-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupComparator:Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;

    .line 284
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    .line 285
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 286
    .local v3, permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    if-nez p2, :cond_0

    .line 316
    :goto_0
    return-void

    .line 291
    :cond_0
    const/4 v2, 0x0

    .line 293
    .local v2, installedPkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v6, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 295
    :try_start_0
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v8, 0x1000

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 299
    :goto_1
    invoke-direct {p0, p2, v3, v2}, Landroid/widget/AppSecurityPermissions;->extractPerms(Landroid/content/pm/PackageInfo;Ljava/util/Set;Landroid/content/pm/PackageInfo;)V

    .line 302
    :cond_1
    iget-object v6, p2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 305
    :try_start_1
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v4

    .line 306
    .local v4, sharedUid:I
    invoke-direct {p0, v4, v3}, Landroid/widget/AppSecurityPermissions;->getAllUsedPermissions(ILjava/util/Set;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 312
    .end local v4           #sharedUid:I
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    .line 313
    .local v5, tmpInfo:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 307
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #tmpInfo:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    :catch_0
    move-exception v0

    .line 308
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "AppSecurityPermissions"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could\'nt retrieve shared user id for:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 315
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-direct {p0, v6}, Landroid/widget/AppSecurityPermissions;->setPermissions(Ljava/util/List;)V

    goto :goto_0

    .line 297
    .end local v1           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    .line 75
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    .line 254
    iput-object p1, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    .line 255
    iget-object v5, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    .line 256
    invoke-direct {p0}, Landroid/widget/AppSecurityPermissions;->loadResources()V

    .line 257
    new-instance v5, Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;

    invoke-direct {v5}, Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;-><init>()V

    iput-object v5, p0, Landroid/widget/AppSecurityPermissions;->mPermComparator:Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;

    .line 258
    new-instance v5, Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;

    invoke-direct {v5}, Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;-><init>()V

    iput-object v5, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupComparator:Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;

    .line 259
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    .line 260
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 263
    .local v2, permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    :try_start_0
    iget-object v5, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/16 v6, 0x1000

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 269
    .local v3, pkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 270
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v5, v2}, Landroid/widget/AppSecurityPermissions;->getAllUsedPermissions(ILjava/util/Set;)V

    .line 272
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    .line 273
    .local v4, tmpInfo:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    iget-object v5, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #tmpInfo:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    :catch_0
    move-exception v0

    .line 265
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "AppSecurityPermissions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t retrieve permissions for package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    return-void

    .line 275
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v5, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-direct {p0, v5}, Landroid/widget/AppSecurityPermissions;->setPermissions(Ljava/util/List;)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p2, permList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    .line 242
    iput-object p1, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    .line 243
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    .line 244
    invoke-direct {p0}, Landroid/widget/AppSecurityPermissions;->loadResources()V

    .line 245
    new-instance v2, Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;

    invoke-direct {v2}, Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;-><init>()V

    iput-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPermComparator:Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;

    .line 246
    new-instance v2, Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;

    invoke-direct {v2}, Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;-><init>()V

    iput-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupComparator:Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;

    .line 247
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PermissionInfo;

    .line 248
    .local v1, pi:Landroid/content/pm/PermissionInfo;
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    new-instance v3, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    invoke-direct {v3, v1}, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    .end local v1           #pi:Landroid/content/pm/PermissionInfo;
    :cond_0
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-direct {p0, v2}, Landroid/widget/AppSecurityPermissions;->setPermissions(Ljava/util/List;)V

    .line 251
    return-void
.end method

.method private addPermToList(Ljava/util/List;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;)V
    .locals 2
    .parameter
    .parameter "pInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 608
    .local p1, permList:Ljava/util/List;,"Ljava/util/List<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    iget-object v1, p2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 609
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    .line 611
    :cond_0
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mPermComparator:Landroid/widget/AppSecurityPermissions$PermissionInfoComparator;

    invoke-static {p1, p2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 613
    .local v0, idx:I
    if-gez v0, :cond_1

    .line 614
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x1

    .line 615
    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 617
    :cond_1
    return-void
.end method

.method private displayPermissions(Ljava/util/List;Landroid/widget/LinearLayout;I)V
    .locals 10
    .parameter
    .parameter "permListView"
    .parameter "which"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 499
    .local p1, groups:Ljava/util/List;,"Ljava/util/List<Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;>;"
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 501
    const/high16 v8, 0x4100

    iget-object v9, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    float-to-int v6, v8

    .line 503
    .local v6, spacing:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_6

    .line 504
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 505
    .local v0, grp:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    invoke-direct {p0, v0, p3}, Landroid/widget/AppSecurityPermissions;->getPermissionList(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;I)Ljava/util/List;

    move-result-object v5

    .line 506
    .local v5, perms:Ljava/util/List;,"Ljava/util/List<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_5

    .line 507
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    .line 508
    .local v4, perm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    if-nez v2, :cond_3

    const/4 v8, 0x1

    move v9, v8

    :goto_2
    const/4 v8, 0x4

    if-eq p3, v8, :cond_4

    iget-object v8, p0, Landroid/widget/AppSecurityPermissions;->mNewPermPrefix:Ljava/lang/CharSequence;

    :goto_3
    invoke-direct {p0, v0, v4, v9, v8}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;)Landroid/widget/AppSecurityPermissions$PermissionItemView;

    move-result-object v7

    .line 510
    .local v7, view:Landroid/view/View;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 513
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-nez v2, :cond_0

    .line 514
    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 516
    :cond_0
    iget-object v8, v0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v2, v8, :cond_1

    .line 517
    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 519
    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-nez v8, :cond_2

    .line 520
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    mul-int/lit8 v8, v8, 0x2

    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 522
    :cond_2
    invoke-virtual {p2, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 508
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v7           #view:Landroid/view/View;
    :cond_3
    const/4 v8, 0x0

    move v9, v8

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .line 503
    .end local v4           #perm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 525
    .end local v0           #grp:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .end local v2           #j:I
    .end local v5           #perms:Ljava/util/List;,"Ljava/util/List<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    :cond_6
    return-void
.end method

.method private extractPerms(Landroid/content/pm/PackageInfo;Ljava/util/Set;Landroid/content/pm/PackageInfo;)V
    .locals 21
    .parameter "info"
    .parameter
    .parameter "installedPkgInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/Set",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 370
    .local p2, permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v16, v0

    .line 371
    .local v16, strList:[Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 372
    .local v6, flagsList:[I
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 448
    :cond_0
    return-void

    .line 375
    :cond_1
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AppSecurityPermissions;->mInstalledPackageInfo:Landroid/content/pm/PackageInfo;

    .line 376
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_0

    .line 377
    aget-object v15, v16, v10

    .line 380
    .local v15, permName:Ljava/lang/String;
    if-eqz p3, :cond_3

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    if-ne v0, v1, :cond_3

    .line 381
    aget v18, v6, v10

    and-int/lit8 v18, v18, 0x2

    if-nez v18, :cond_3

    .line 376
    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 386
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v15, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v17

    .line 387
    .local v17, tmpPermInfo:Landroid/content/pm/PermissionInfo;
    if-eqz v17, :cond_2

    .line 390
    const/4 v5, -0x1

    .line 391
    .local v5, existingIndex:I
    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 393
    const/4 v11, 0x0

    .local v11, j:I
    :goto_2
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_4

    .line 394
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v11

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 395
    move v5, v11

    .line 400
    .end local v11           #j:I
    :cond_4
    if-ltz v5, :cond_9

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    move-object/from16 v18, v0

    aget v4, v18, v5

    .line 402
    .local v4, existingFlags:I
    :goto_3
    aget v18, v6, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v4}, Landroid/widget/AppSecurityPermissions;->isDisplayablePermission(Landroid/content/pm/PermissionInfo;II)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 407
    move-object/from16 v0, v17

    iget-object v14, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 408
    .local v14, origGroupName:Ljava/lang/String;
    move-object v8, v14

    .line 409
    .local v8, groupName:Ljava/lang/String;
    if-nez v8, :cond_5

    .line 410
    move-object/from16 v0, v17

    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 411
    move-object/from16 v0, v17

    iput-object v8, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 413
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 414
    .local v7, group:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    if-nez v7, :cond_7

    .line 415
    const/4 v9, 0x0

    .line 416
    .local v9, grp:Landroid/content/pm/PermissionGroupInfo;
    if-eqz v14, :cond_6

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v9

    .line 419
    :cond_6
    if-eqz v9, :cond_a

    .line 420
    new-instance v7, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .end local v7           #group:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    invoke-direct {v7, v9}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 433
    .restart local v7       #group:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .end local v9           #grp:Landroid/content/pm/PermissionGroupInfo;
    :cond_7
    if-eqz p3, :cond_c

    and-int/lit8 v18, v4, 0x2

    if-nez v18, :cond_c

    const/4 v13, 0x1

    .line 437
    .local v13, newPerm:Z
    :goto_5
    new-instance v12, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 438
    .local v12, myPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    aget v18, v6, v10

    move/from16 v0, v18

    iput v0, v12, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mNewReqFlags:I

    .line 439
    iput v4, v12, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mExistingReqFlags:I

    .line 442
    iput-boolean v13, v12, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mNew:Z

    .line 443
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 444
    .end local v4           #existingFlags:I
    .end local v5           #existingIndex:I
    .end local v7           #group:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .end local v8           #groupName:Ljava/lang/String;
    .end local v12           #myPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    .end local v13           #newPerm:Z
    .end local v14           #origGroupName:Ljava/lang/String;
    .end local v17           #tmpPermInfo:Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v3

    .line 445
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v18, "AppSecurityPermissions"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Ignoring unknown permission:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 393
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5       #existingIndex:I
    .restart local v11       #j:I
    .restart local v17       #tmpPermInfo:Landroid/content/pm/PermissionInfo;
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 400
    .end local v11           #j:I
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 426
    .restart local v4       #existingFlags:I
    .restart local v7       #group:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .restart local v8       #groupName:Ljava/lang/String;
    .restart local v9       #grp:Landroid/content/pm/PermissionGroupInfo;
    .restart local v14       #origGroupName:Ljava/lang/String;
    :cond_a
    :try_start_1
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #group:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    check-cast v7, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 428
    .restart local v7       #group:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    if-nez v7, :cond_b

    .line 429
    new-instance v7, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .end local v7           #group:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 431
    .restart local v7       #group:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    :cond_b
    new-instance v7, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .end local v7           #group:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;-><init>(Landroid/content/pm/PermissionInfo;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v7       #group:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    goto/16 :goto_4

    .line 435
    .end local v9           #grp:Landroid/content/pm/PermissionGroupInfo;
    :cond_c
    const/4 v13, 0x0

    goto :goto_5
.end method

.method private getAllUsedPermissions(ILjava/util/Set;)V
    .locals 6
    .parameter "sharedUid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 345
    .local p2, permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    iget-object v5, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 346
    .local v4, sharedPkgList:[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v5, v4

    if-nez v5, :cond_1

    .line 352
    :cond_0
    return-void

    .line 349
    :cond_1
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 350
    .local v3, sharedPkg:Ljava/lang/String;
    invoke-direct {p0, v3, p2}, Landroid/widget/AppSecurityPermissions;->getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;)V

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "grpName"
    .parameter "description"
    .parameter "dangerous"

    .prologue
    .line 332
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 334
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p3, :cond_0

    const v0, 0x10802b1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .local v5, icon:Landroid/graphics/drawable/Drawable;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 336
    invoke-static/range {v0 .. v5}, Landroid/widget/AppSecurityPermissions;->getPermissionItemViewOld(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 334
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    :cond_0
    const v0, 0x1080360

    goto :goto_0
.end method

.method private static getPermissionItemView(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;)Landroid/widget/AppSecurityPermissions$PermissionItemView;
    .locals 3
    .parameter "context"
    .parameter "inflater"
    .parameter "grp"
    .parameter "perm"
    .parameter "first"
    .parameter "newPermPrefix"

    .prologue
    .line 535
    iget v1, p3, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const v1, 0x109002a

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AppSecurityPermissions$PermissionItemView;

    .line 539
    .local v0, permView:Landroid/widget/AppSecurityPermissions$PermissionItemView;
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->setPermission(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;)V

    .line 540
    return-object v0

    .line 535
    .end local v0           #permView:Landroid/widget/AppSecurityPermissions$PermissionItemView;
    :cond_0
    const v1, 0x1090029

    goto :goto_0
.end method

.method private getPermissionItemView(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;)Landroid/widget/AppSecurityPermissions$PermissionItemView;
    .locals 6
    .parameter "grp"
    .parameter "perm"
    .parameter "first"
    .parameter "newPermPrefix"

    .prologue
    .line 529
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/AppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;)Landroid/widget/AppSecurityPermissions$PermissionItemView;

    move-result-object v0

    return-object v0
.end method

.method private static getPermissionItemViewOld(Landroid/content/Context;Landroid/view/LayoutInflater;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "inflater"
    .parameter "grpName"
    .parameter "permList"
    .parameter "dangerous"
    .parameter "icon"

    .prologue
    .line 545
    const v4, 0x109002b

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 547
    .local v3, permView:Landroid/view/View;
    const v4, 0x102026c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 548
    .local v2, permGrpView:Landroid/widget/TextView;
    const v4, 0x102026d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 550
    .local v1, permDescView:Landroid/widget/TextView;
    const v4, 0x1020268

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 551
    .local v0, imgView:Landroid/widget/ImageView;
    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 552
    if-eqz p2, :cond_0

    .line 553
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    :goto_0
    return-object v3

    .line 556
    :cond_0
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private getPermissionList(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;I)Ljava/util/List;
    .locals 1
    .parameter "grp"
    .parameter "which"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 456
    iget-object v0, p1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mNewPermissions:Ljava/util/ArrayList;

    .line 462
    :goto_0
    return-object v0

    .line 457
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 458
    iget-object v0, p1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mPersonalPermissions:Ljava/util/ArrayList;

    goto :goto_0

    .line 459
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 460
    iget-object v0, p1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mDevicePermissions:Ljava/util/ArrayList;

    goto :goto_0

    .line 462
    :cond_2
    iget-object v0, p1, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;)V
    .locals 5
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 358
    .local p2, permSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    :try_start_0
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x1000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 363
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 364
    invoke-direct {p0, v1, p2, v1}, Landroid/widget/AppSecurityPermissions;->extractPerms(Landroid/content/pm/PackageInfo;Ljava/util/Set;Landroid/content/pm/PackageInfo;)V

    .line 366
    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AppSecurityPermissions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t retrieve permissions for package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isDisplayablePermission(Landroid/content/pm/PermissionInfo;II)Z
    .locals 3
    .parameter "pInfo"
    .parameter "newReqFlags"
    .parameter "existingReqFlags"

    .prologue
    const/4 v1, 0x1

    .line 564
    iget v2, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v2, 0xf

    .line 566
    .local v0, base:I
    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 579
    :cond_0
    :goto_0
    return v1

    .line 573
    :cond_1
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_2

    iget v2, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_0

    .line 579
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadResources()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    const v1, 0x1040433

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mNewPermPrefix:Ljava/lang/CharSequence;

    .line 321
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080360

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mNormalIcon:Landroid/graphics/drawable/Drawable;

    .line 322
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10802b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions;->mDangerousIcon:Landroid/graphics/drawable/Drawable;

    .line 323
    return-void
.end method

.method private setPermissions(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 620
    .local p1, permList:Ljava/util/List;,"Ljava/util/List<Landroid/widget/AppSecurityPermissions$MyPermissionInfo;>;"
    if-eqz p1, :cond_3

    .line 622
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    .line 624
    .local v4, pInfo:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    iget v6, v4, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mNewReqFlags:I

    iget v7, v4, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mExistingReqFlags:I

    invoke-direct {p0, v4, v6, v7}, Landroid/widget/AppSecurityPermissions;->isDisplayablePermission(Landroid/content/pm/PermissionInfo;II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 628
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    iget-object v7, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 629
    .local v2, group:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    if-eqz v2, :cond_0

    .line 630
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v4, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    .line 631
    iget-object v6, v2, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v4}, Landroid/widget/AppSecurityPermissions;->addPermToList(Ljava/util/List;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;)V

    .line 632
    iget-boolean v6, v4, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mNew:Z

    if-eqz v6, :cond_1

    .line 633
    iget-object v6, v2, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mNewPermissions:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v4}, Landroid/widget/AppSecurityPermissions;->addPermToList(Ljava/util/List;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;)V

    .line 635
    :cond_1
    iget v6, v2, Landroid/content/pm/PermissionGroupInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    .line 636
    iget-object v6, v2, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mPersonalPermissions:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v4}, Landroid/widget/AppSecurityPermissions;->addPermToList(Ljava/util/List;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;)V

    goto :goto_0

    .line 638
    :cond_2
    iget-object v6, v2, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mDevicePermissions:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v4}, Landroid/widget/AppSecurityPermissions;->addPermToList(Ljava/util/List;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;)V

    goto :goto_0

    .line 644
    .end local v2           #group:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #pInfo:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    :cond_3
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPermGroups:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 645
    .local v5, pgrp:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    iget v6, v5, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v6, :cond_4

    iget-object v6, v5, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v6, :cond_5

    .line 646
    :cond_4
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v5, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    .line 656
    :goto_2
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 650
    :cond_5
    :try_start_0
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 651
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v5, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 652
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 653
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v5, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    goto :goto_2

    .line 658
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #pgrp:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    :cond_6
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    iget-object v7, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupComparator:Landroid/widget/AppSecurityPermissions$PermissionGroupInfoComparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 666
    return-void
.end method


# virtual methods
.method public getInstalledPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions;->mInstalledPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public getPermissionCount()I
    .locals 1

    .prologue
    .line 451
    const v0, 0xffff

    invoke-virtual {p0, v0}, Landroid/widget/AppSecurityPermissions;->getPermissionCount(I)I

    move-result v0

    return v0
.end method

.method public getPermissionCount(I)I
    .locals 3
    .parameter "which"

    .prologue
    .line 467
    const/4 v0, 0x0

    .line 468
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 469
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    invoke-direct {p0, v2, p1}, Landroid/widget/AppSecurityPermissions;->getPermissionList(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 468
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 471
    :cond_0
    return v0
.end method

.method public getPermissionsView()Landroid/view/View;
    .locals 1

    .prologue
    .line 475
    const v0, 0xffff

    invoke-virtual {p0, v0}, Landroid/widget/AppSecurityPermissions;->getPermissionsView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionsView(I)Landroid/view/View;
    .locals 6
    .parameter "which"

    .prologue
    .line 479
    iget-object v3, p0, Landroid/widget/AppSecurityPermissions;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Landroid/widget/AppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    .line 481
    iget-object v3, p0, Landroid/widget/AppSecurityPermissions;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x109002c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 482
    .local v2, permsView:Landroid/widget/LinearLayout;
    const v3, 0x102026f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 483
    .local v0, displayList:Landroid/widget/LinearLayout;
    const v3, 0x102026e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 485
    .local v1, noPermsView:Landroid/view/View;
    iget-object v3, p0, Landroid/widget/AppSecurityPermissions;->mPermGroupsList:Ljava/util/List;

    invoke-direct {p0, v3, v0, p1}, Landroid/widget/AppSecurityPermissions;->displayPermissions(Ljava/util/List;Landroid/widget/LinearLayout;I)V

    .line 486
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_0

    .line 487
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 490
    :cond_0
    return-object v2
.end method
