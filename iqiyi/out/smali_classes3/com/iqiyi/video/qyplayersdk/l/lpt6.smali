.class Lcom/iqiyi/video/qyplayersdk/l/lpt6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic evj:Lcom/iqiyi/video/qyplayersdk/l/lpt5;


# direct methods
.method constructor <init>(Lcom/iqiyi/video/qyplayersdk/l/lpt5;)V
    .locals 0

    iput-object p1, p0, Lcom/iqiyi/video/qyplayersdk/l/lpt6;->evj:Lcom/iqiyi/video/qyplayersdk/l/lpt5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/io/File;Ljava/io/File;)I
    .locals 5

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/iqiyi/video/qyplayersdk/l/lpt6;->b(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
