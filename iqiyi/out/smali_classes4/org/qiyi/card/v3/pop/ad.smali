.class Lorg/qiyi/card/v3/pop/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic jbc:Lorg/qiyi/card/v3/pop/ac;

.field final synthetic val$block:Lorg/qiyi/basecard/v3/data/component/Block;

.field final synthetic val$event:Lorg/qiyi/basecard/v3/data/event/Event;


# direct methods
.method constructor <init>(Lorg/qiyi/card/v3/pop/ac;Lorg/qiyi/basecard/v3/data/event/Event;Lorg/qiyi/basecard/v3/data/component/Block;)V
    .locals 0

    iput-object p1, p0, Lorg/qiyi/card/v3/pop/ad;->jbc:Lorg/qiyi/card/v3/pop/ac;

    iput-object p2, p0, Lorg/qiyi/card/v3/pop/ad;->val$event:Lorg/qiyi/basecard/v3/data/event/Event;

    iput-object p3, p0, Lorg/qiyi/card/v3/pop/ad;->val$block:Lorg/qiyi/basecard/v3/data/component/Block;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/qiyi/card/v3/pop/ad;->jbc:Lorg/qiyi/card/v3/pop/ac;

    iget-object v0, v0, Lorg/qiyi/card/v3/pop/ac;->jbb:Lorg/qiyi/card/v3/pop/aa;

    iget-object v1, p0, Lorg/qiyi/card/v3/pop/ad;->jbc:Lorg/qiyi/card/v3/pop/ac;

    iget-object v1, v1, Lorg/qiyi/card/v3/pop/ac;->jbb:Lorg/qiyi/card/v3/pop/aa;

    invoke-static {v1}, Lorg/qiyi/card/v3/pop/aa;->a(Lorg/qiyi/card/v3/pop/aa;)Lorg/qiyi/basecard/v3/adapter/ICardAdapter;

    move-result-object v2

    iget-object v1, p0, Lorg/qiyi/card/v3/pop/ad;->jbc:Lorg/qiyi/card/v3/pop/ac;

    iget-object v1, v1, Lorg/qiyi/card/v3/pop/ac;->jbb:Lorg/qiyi/card/v3/pop/aa;

    iget-object v3, v1, Lorg/qiyi/card/v3/pop/aa;->mViewHolder:Lorg/qiyi/basecard/v3/viewholder/AbsViewHolder;

    const-string/jumbo v4, "click_event"

    iget-object v5, p0, Lorg/qiyi/card/v3/pop/ad;->val$event:Lorg/qiyi/basecard/v3/data/event/Event;

    iget-object v6, p0, Lorg/qiyi/card/v3/pop/ad;->val$block:Lorg/qiyi/basecard/v3/data/component/Block;

    iget-object v1, p0, Lorg/qiyi/card/v3/pop/ad;->jbc:Lorg/qiyi/card/v3/pop/ac;

    iget-object v1, v1, Lorg/qiyi/card/v3/pop/ac;->jbb:Lorg/qiyi/card/v3/pop/aa;

    invoke-static {v1}, Lorg/qiyi/card/v3/pop/aa;->b(Lorg/qiyi/card/v3/pop/aa;)Lorg/qiyi/basecard/v3/event/EventData;

    move-result-object v8

    const/4 v10, 0x0

    move-object v1, p1

    move-object v9, v7

    invoke-static/range {v0 .. v10}, Lorg/qiyi/card/v3/pop/aa;->a(Lorg/qiyi/card/v3/pop/aa;Landroid/view/View;Lorg/qiyi/basecard/v3/adapter/ICardAdapter;Lorg/qiyi/basecard/v3/viewholder/AbsViewHolder;Ljava/lang/String;Lorg/qiyi/basecard/v3/data/event/Event;Lorg/qiyi/basecard/v3/data/component/Block;Lorg/qiyi/basecard/v3/data/element/Element;Lorg/qiyi/basecard/v3/event/EventData;Landroid/os/Bundle;I)Z

    :try_start_0
    iget-object v0, p0, Lorg/qiyi/card/v3/pop/ad;->jbc:Lorg/qiyi/card/v3/pop/ac;

    iget-object v0, v0, Lorg/qiyi/card/v3/pop/ac;->jbb:Lorg/qiyi/card/v3/pop/aa;

    sget-object v1, Lorg/qiyi/basecard/v3/pop/AbsCardPopWindow$DismissFromType;->CLICK:Lorg/qiyi/basecard/v3/pop/AbsCardPopWindow$DismissFromType;

    invoke-virtual {v0, v1}, Lorg/qiyi/card/v3/pop/aa;->dismissPopWindow(Lorg/qiyi/basecard/v3/pop/AbsCardPopWindow$DismissFromType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lorg/qiyi/basecard/common/statics/prn;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    throw v0
.end method
