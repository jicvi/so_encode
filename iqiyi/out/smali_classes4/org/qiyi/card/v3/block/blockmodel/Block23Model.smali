.class public Lorg/qiyi/card/v3/block/blockmodel/Block23Model;
.super Lorg/qiyi/basecard/v3/viewmodel/block/BlockModel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/qiyi/basecard/v3/viewmodel/block/BlockModel",
        "<",
        "Lorg/qiyi/card/v3/block/blockmodel/Block23Model$ViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/qiyi/basecard/v3/viewmodel/row/AbsRowModel;Lorg/qiyi/basecard/v3/layout/CardLayout$CardRow;Lorg/qiyi/basecard/v3/data/component/Block;Lorg/qiyi/basecard/v3/viewmodel/block/BlockParams;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/qiyi/basecard/v3/viewmodel/block/BlockModel;-><init>(Lorg/qiyi/basecard/v3/viewmodel/row/AbsRowModel;Lorg/qiyi/basecard/v3/layout/CardLayout$CardRow;Lorg/qiyi/basecard/v3/data/component/Block;Lorg/qiyi/basecard/v3/viewmodel/block/BlockParams;)V

    return-void
.end method


# virtual methods
.method public bh(Landroid/view/View;Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;)Lorg/qiyi/card/v3/block/blockmodel/Block23Model$ViewHolder;
    .locals 1

    new-instance v0, Lorg/qiyi/card/v3/block/blockmodel/Block23Model$ViewHolder;

    invoke-direct {v0, p0, p1, p2}, Lorg/qiyi/card/v3/block/blockmodel/Block23Model$ViewHolder;-><init>(Lorg/qiyi/card/v3/block/blockmodel/Block23Model;Landroid/view/View;Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;)V

    return-object v0
.end method

.method public getLayoutFileName(Lorg/qiyi/basecard/v3/data/component/Block;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public onCreateView(Landroid/view/ViewGroup;Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/qiyi/basecore/widget/QiyiDraweeView;

    invoke-direct {v4, v0}, Lorg/qiyi/basecore/widget/QiyiDraweeView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v5, "img1"

    invoke-virtual {p2, v5}, Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;->getResourceIdForID(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/qiyi/basecore/widget/QiyiDraweeView;->setId(I)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/qiyi/basecore/widget/QiyiDraweeView;

    invoke-direct {v4, v0}, Lorg/qiyi/basecore/widget/QiyiDraweeView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v5, "img2"

    invoke-virtual {p2, v5}, Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;->getResourceIdForID(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/qiyi/basecore/widget/QiyiDraweeView;->setId(I)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/qiyi/basecard/common/widget/AutoIconSizeMetaView;

    invoke-direct {v4, v0}, Lorg/qiyi/basecard/common/widget/AutoIconSizeMetaView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v5, "meta1"

    invoke-virtual {p2, v5}, Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;->getResourceIdForID(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/qiyi/basecard/common/widget/AutoIconSizeMetaView;->setId(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lorg/qiyi/basecard/common/widget/AutoIconSizeMetaView;

    invoke-direct {v4, v0}, Lorg/qiyi/basecard/common/widget/AutoIconSizeMetaView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v5, "meta2"

    invoke-virtual {p2, v5}, Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;->getResourceIdForID(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/qiyi/basecard/common/widget/AutoIconSizeMetaView;->setId(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/qiyi/basecard/common/widget/ButtonView;

    invoke-direct {v3, v0}, Lorg/qiyi/basecard/common/widget/ButtonView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "button1"

    invoke-virtual {p2, v4}, Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;->getResourceIdForID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/qiyi/basecard/common/widget/ButtonView;->setId(I)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/qiyi/basecard/common/widget/ButtonView;

    invoke-direct {v3, v0}, Lorg/qiyi/basecard/common/widget/ButtonView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "button2"

    invoke-virtual {p2, v0}, Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;->getResourceIdForID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/qiyi/basecard/common/widget/ButtonView;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lorg/qiyi/card/v3/block/blockmodel/Block23Model;->mPosition:I

    invoke-virtual {p0, v0, v2}, Lorg/qiyi/card/v3/block/blockmodel/Block23Model;->getBlockWidth(Landroid/content/Context;I)I

    move-result v0

    iget v2, p0, Lorg/qiyi/card/v3/block/blockmodel/Block23Model;->mLeftBlockViewId:I

    invoke-virtual {p0, v0, v2}, Lorg/qiyi/card/v3/block/blockmodel/Block23Model;->getParams(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public synthetic onCreateViewHolder(Landroid/view/View;Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;)Lorg/qiyi/basecard/v3/viewholder/BlockViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/qiyi/card/v3/block/blockmodel/Block23Model;->bh(Landroid/view/View;Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;)Lorg/qiyi/card/v3/block/blockmodel/Block23Model$ViewHolder;

    move-result-object v0

    return-object v0
.end method
