.class public Lcom/iqiyi/paopao/client/common/a/a/b/com1;
.super Ljava/lang/Object;


# static fields
.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "StarComingTable"

    invoke-static {v0}, Lcom/iqiyi/paopao/client/common/a/a/aux;->dI(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/paopao/client/common/a/a/b/com1;->URI:Landroid/net/Uri;

    return-void
.end method
