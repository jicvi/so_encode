.class Lcom/iqiyi/qyplayercardview/block/blockmodel/com6;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/iqiyi/video/image/c/aux;


# instance fields
.field final synthetic dlW:Lcom/iqiyi/qyplayercardview/block/blockmodel/PortraitTabMovieTicketModel$ViewHolder;

.field final synthetic dlX:Lcom/iqiyi/qyplayercardview/block/blockmodel/PortraitTabMovieTicketModel;


# direct methods
.method constructor <init>(Lcom/iqiyi/qyplayercardview/block/blockmodel/PortraitTabMovieTicketModel;Lcom/iqiyi/qyplayercardview/block/blockmodel/PortraitTabMovieTicketModel$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/iqiyi/qyplayercardview/block/blockmodel/com6;->dlX:Lcom/iqiyi/qyplayercardview/block/blockmodel/PortraitTabMovieTicketModel;

    iput-object p2, p0, Lcom/iqiyi/qyplayercardview/block/blockmodel/com6;->dlW:Lcom/iqiyi/qyplayercardview/block/blockmodel/PortraitTabMovieTicketModel$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;IILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iqiyi/qyplayercardview/block/blockmodel/com6;->dlX:Lcom/iqiyi/qyplayercardview/block/blockmodel/PortraitTabMovieTicketModel;

    invoke-static {v0}, Lcom/iqiyi/qyplayercardview/block/blockmodel/PortraitTabMovieTicketModel;->a(Lcom/iqiyi/qyplayercardview/block/blockmodel/PortraitTabMovieTicketModel;)Lcom/iqiyi/video/qyplayersdk/cupid/a/a/com3;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/iqiyi/qyplayercardview/h/lpt5;

    invoke-direct {v0}, Lcom/iqiyi/qyplayercardview/h/lpt5;-><init>()V

    iget-object v1, p0, Lcom/iqiyi/qyplayercardview/block/blockmodel/com6;->dlX:Lcom/iqiyi/qyplayercardview/block/blockmodel/PortraitTabMovieTicketModel;

    invoke-static {v1}, Lcom/iqiyi/qyplayercardview/block/blockmodel/PortraitTabMovieTicketModel;->a(Lcom/iqiyi/qyplayercardview/block/blockmodel/PortraitTabMovieTicketModel;)Lcom/iqiyi/video/qyplayersdk/cupid/a/a/com3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iqiyi/video/qyplayersdk/cupid/a/a/com3;->getAdId()I

    move-result v1

    iput v1, v0, Lcom/iqiyi/qyplayercardview/h/lpt5;->adid:I

    iput-object p4, v0, Lcom/iqiyi/qyplayercardview/h/lpt5;->url:Ljava/lang/String;

    sget-object v1, Lcom/mcto/cupid/constant/CreativeEvent;->CREATIVE_SUCCESS:Lcom/mcto/cupid/constant/CreativeEvent;

    iput-object v1, v0, Lcom/iqiyi/qyplayercardview/h/lpt5;->doH:Lcom/mcto/cupid/constant/CreativeEvent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/iqiyi/qyplayercardview/h/lpt5;->success:Z

    iget-object v1, p0, Lcom/iqiyi/qyplayercardview/block/blockmodel/com6;->dlW:Lcom/iqiyi/qyplayercardview/block/blockmodel/PortraitTabMovieTicketModel$ViewHolder;

    invoke-static {v1}, Lorg/qiyi/basecard/v3/event/EventData;->obtain(Lorg/qiyi/basecard/v3/viewholder/AbsViewHolder;)Lorg/qiyi/basecard/v3/event/EventData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/qiyi/basecard/v3/event/EventData;->setData(Ljava/lang/Object;)V

    const/16 v0, 0x2712

    invoke-virtual {v1, v0}, Lorg/qiyi/basecard/v3/event/EventData;->setCustomEventId(I)V

    iget-object v0, p0, Lcom/iqiyi/qyplayercardview/block/blockmodel/com6;->dlW:Lcom/iqiyi/qyplayercardview/block/blockmodel/PortraitTabMovieTicketModel$ViewHolder;

    const-string/jumbo v2, "EVENT_CUSTOM"

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/iqiyi/qyplayercardview/block/blockmodel/PortraitTabMovieTicketModel$ViewHolder;->sendEvent(Landroid/view/View;Lorg/qiyi/basecard/v3/event/EventData;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public r(ILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iqiyi/qyplayercardview/block/blockmodel/com6;->dlX:Lcom/iqiyi/qyplayercardview/block/blockmodel/PortraitTabMovieTicketModel;

    invoke-static {v0}, Lcom/iqiyi/qyplayercardview/block/blockmodel/PortraitTabMovieTicketModel;->a(Lcom/iqiyi/qyplayercardview/block/blockmodel/PortraitTabMovieTicketModel;)Lcom/iqiyi/video/qyplayersdk/cupid/a/a/com3;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/iqiyi/qyplayercardview/h/lpt5;

    invoke-direct {v0}, Lcom/iqiyi/qyplayercardview/h/lpt5;-><init>()V

    iget-object v1, p0, Lcom/iqiyi/qyplayercardview/block/blockmodel/com6;->dlX:Lcom/iqiyi/qyplayercardview/block/blockmodel/PortraitTabMovieTicketModel;

    invoke-static {v1}, Lcom/iqiyi/qyplayercardview/block/blockmodel/PortraitTabMovieTicketModel;->a(Lcom/iqiyi/qyplayercardview/block/blockmodel/PortraitTabMovieTicketModel;)Lcom/iqiyi/video/qyplayersdk/cupid/a/a/com3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iqiyi/video/qyplayersdk/cupid/a/a/com3;->getAdId()I

    move-result v1

    iput v1, v0, Lcom/iqiyi/qyplayercardview/h/lpt5;->adid:I

    iput-object p2, v0, Lcom/iqiyi/qyplayercardview/h/lpt5;->url:Ljava/lang/String;

    sget-object v1, Lcom/mcto/cupid/constant/CreativeEvent;->CREATIVE_FAILURE_HTTP_ERROR:Lcom/mcto/cupid/constant/CreativeEvent;

    iput-object v1, v0, Lcom/iqiyi/qyplayercardview/h/lpt5;->doH:Lcom/mcto/cupid/constant/CreativeEvent;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/iqiyi/qyplayercardview/h/lpt5;->success:Z

    iget-object v1, p0, Lcom/iqiyi/qyplayercardview/block/blockmodel/com6;->dlW:Lcom/iqiyi/qyplayercardview/block/blockmodel/PortraitTabMovieTicketModel$ViewHolder;

    invoke-static {v1}, Lorg/qiyi/basecard/v3/event/EventData;->obtain(Lorg/qiyi/basecard/v3/viewholder/AbsViewHolder;)Lorg/qiyi/basecard/v3/event/EventData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/qiyi/basecard/v3/event/EventData;->setData(Ljava/lang/Object;)V

    const/16 v0, 0x2712

    invoke-virtual {v1, v0}, Lorg/qiyi/basecard/v3/event/EventData;->setCustomEventId(I)V

    iget-object v0, p0, Lcom/iqiyi/qyplayercardview/block/blockmodel/com6;->dlW:Lcom/iqiyi/qyplayercardview/block/blockmodel/PortraitTabMovieTicketModel$ViewHolder;

    const-string/jumbo v2, "EVENT_CUSTOM"

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/iqiyi/qyplayercardview/block/blockmodel/PortraitTabMovieTicketModel$ViewHolder;->sendEvent(Landroid/view/View;Lorg/qiyi/basecard/v3/event/EventData;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
