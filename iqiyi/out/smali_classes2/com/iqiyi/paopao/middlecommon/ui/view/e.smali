.class Lcom/iqiyi/paopao/middlecommon/ui/view/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ctr:Lcom/iqiyi/paopao/middlecommon/ui/view/a;


# direct methods
.method constructor <init>(Lcom/iqiyi/paopao/middlecommon/ui/view/a;)V
    .locals 0

    iput-object p1, p0, Lcom/iqiyi/paopao/middlecommon/ui/view/e;->ctr:Lcom/iqiyi/paopao/middlecommon/ui/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/iqiyi/paopao/middlecommon/ui/view/e;->ctr:Lcom/iqiyi/paopao/middlecommon/ui/view/a;

    invoke-virtual {v0}, Lcom/iqiyi/paopao/middlecommon/ui/view/a;->hide()V

    return-void
.end method
