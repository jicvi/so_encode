.class Lorg/qiyi/card/v3/page/base/view/nul;
.super Landroid/support/v7/widget/LinearLayoutManager;


# instance fields
.field final synthetic iZj:Lorg/qiyi/card/v3/page/base/view/RecyclerViewCardV3Fragment;


# direct methods
.method constructor <init>(Lorg/qiyi/card/v3/page/base/view/RecyclerViewCardV3Fragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/qiyi/card/v3/page/base/view/nul;->iZj:Lorg/qiyi/card/v3/page/base/view/RecyclerViewCardV3Fragment;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 3

    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method
