.class public Lcom/iqiyi/qyplayercardview/block/blockmodel/Block77Model;
.super Lorg/qiyi/basecard/v3/viewmodel/block/BlockModel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/qiyi/basecard/v3/viewmodel/block/BlockModel",
        "<",
        "Lcom/iqiyi/qyplayercardview/block/blockmodel/Block77Model$ViewHolder;",
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
.method public a(Lorg/qiyi/basecard/v3/viewholder/RowViewHolder;Lcom/iqiyi/qyplayercardview/block/blockmodel/Block77Model$ViewHolder;Lorg/qiyi/basecard/v3/helper/ICardHelper;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/qiyi/basecard/v3/viewmodel/block/BlockModel;->onBindViewData(Lorg/qiyi/basecard/v3/viewholder/RowViewHolder;Lorg/qiyi/basecard/v3/viewmodel/block/BlockModel$ViewHolder;Lorg/qiyi/basecard/v3/helper/ICardHelper;)V

    return-void
.end method

.method public getLayoutFileName(Lorg/qiyi/basecard/v3/data/component/Block;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "block_type_77"

    return-object v0
.end method

.method public j(Landroid/view/View;Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;)Lcom/iqiyi/qyplayercardview/block/blockmodel/Block77Model$ViewHolder;
    .locals 1

    new-instance v0, Lcom/iqiyi/qyplayercardview/block/blockmodel/Block77Model$ViewHolder;

    invoke-direct {v0, p0, p1, p2}, Lcom/iqiyi/qyplayercardview/block/blockmodel/Block77Model$ViewHolder;-><init>(Lcom/iqiyi/qyplayercardview/block/blockmodel/Block77Model;Landroid/view/View;Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;)V

    return-object v0
.end method

.method public synthetic onBindViewData(Lorg/qiyi/basecard/v3/viewholder/RowViewHolder;Lorg/qiyi/basecard/v3/viewholder/BlockViewHolder;Lorg/qiyi/basecard/v3/helper/ICardHelper;)V
    .locals 0

    check-cast p2, Lcom/iqiyi/qyplayercardview/block/blockmodel/Block77Model$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iqiyi/qyplayercardview/block/blockmodel/Block77Model;->a(Lorg/qiyi/basecard/v3/viewholder/RowViewHolder;Lcom/iqiyi/qyplayercardview/block/blockmodel/Block77Model$ViewHolder;Lorg/qiyi/basecard/v3/helper/ICardHelper;)V

    return-void
.end method

.method public synthetic onBindViewData(Lorg/qiyi/basecard/v3/viewholder/RowViewHolder;Lorg/qiyi/basecard/v3/viewmodel/block/BlockModel$ViewHolder;Lorg/qiyi/basecard/v3/helper/ICardHelper;)V
    .locals 0

    check-cast p2, Lcom/iqiyi/qyplayercardview/block/blockmodel/Block77Model$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iqiyi/qyplayercardview/block/blockmodel/Block77Model;->a(Lorg/qiyi/basecard/v3/viewholder/RowViewHolder;Lcom/iqiyi/qyplayercardview/block/blockmodel/Block77Model$ViewHolder;Lorg/qiyi/basecard/v3/helper/ICardHelper;)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/View;Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;)Lorg/qiyi/basecard/v3/viewholder/BlockViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/iqiyi/qyplayercardview/block/blockmodel/Block77Model;->j(Landroid/view/View;Lorg/qiyi/pluginlibrary/utils/ResourcesToolForPlugin;)Lcom/iqiyi/qyplayercardview/block/blockmodel/Block77Model$ViewHolder;

    move-result-object v0

    return-object v0
.end method
