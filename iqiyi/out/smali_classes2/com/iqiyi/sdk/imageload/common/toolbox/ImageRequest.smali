.class public Lcom/iqiyi/sdk/imageload/common/toolbox/ImageRequest;
.super Lcom/iqiyi/sdk/imageload/common/Request;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iqiyi/sdk/imageload/common/Request",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final IMAGE_BACKOFF_MULT:F = 2.0f

.field private static final IMAGE_MAX_RETRIES:I = 0x2

.field private static final IMAGE_TIMEOUT_MS:I = 0x3e8

.field private static final sDecodeLock:Ljava/lang/Object;


# instance fields
.field private final mDecodeConfig:Landroid/graphics/Bitmap$Config;

.field private final mListener:Lcom/iqiyi/sdk/imageload/common/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iqiyi/sdk/imageload/common/Response$Listener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxHeight:I

.field private final mMaxWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/iqiyi/sdk/imageload/common/toolbox/ImageRequest;->sDecodeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/iqiyi/sdk/imageload/common/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/iqiyi/sdk/imageload/common/Response$ErrorListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iqiyi/sdk/imageload/common/Response$Listener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/iqiyi/sdk/imageload/common/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p6}, Lcom/iqiyi/sdk/imageload/common/Request;-><init>(ILjava/lang/String;Lcom/iqiyi/sdk/imageload/common/Response$ErrorListener;)V

    new-instance v0, Lcom/iqiyi/sdk/imageload/common/DefaultRetryPolicy;

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/iqiyi/sdk/imageload/common/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/iqiyi/sdk/imageload/common/toolbox/ImageRequest;->setRetryPolicy(Lcom/iqiyi/sdk/imageload/common/RetryPolicy;)V

    iput-object p2, p0, Lcom/iqiyi/sdk/imageload/common/toolbox/ImageRequest;->mListener:Lcom/iqiyi/sdk/imageload/common/Response$Listener;

    iput-object p5, p0, Lcom/iqiyi/sdk/imageload/common/toolbox/ImageRequest;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    iput p3, p0, Lcom/iqiyi/sdk/imageload/common/toolbox/ImageRequest;->mMaxWidth:I

    iput p4, p0, Lcom/iqiyi/sdk/imageload/common/toolbox/ImageRequest;->mMaxHeight:I

    return-void
.end method

.method private doParse(Lcom/iqiyi/sdk/imageload/common/NetworkResponse;)Lcom/iqiyi/sdk/imageload/common/Response;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iqiyi/sdk/imageload/common/NetworkResponse;",
            ")",
            "Lcom/iqiyi/sdk/imageload/common/Response",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/16 v9, 0xa

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p1, Lcom/iqiyi/sdk/imageload/common/NetworkResponse;->data:[B

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget v0, p0, Lcom/iqiyi/sdk/imageload/common/toolbox/ImageRequest;->mMaxWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/iqiyi/sdk/imageload/common/toolbox/ImageRequest;->mMaxHeight:I

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/iqiyi/sdk/imageload/common/toolbox/ImageRequest;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    iput-object v0, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    array-length v0, v4

    invoke-static {v4, v7, v0, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_8

    new-instance v0, Lcom/iqiyi/sdk/imageload/common/ParseError;

    invoke-direct {v0}, Lcom/iqiyi/sdk/imageload/common/ParseError;-><init>()V

    invoke-static {v0}, Lcom/iqiyi/sdk/imageload/common/Response;->error(Lcom/iqiyi/sdk/imageload/RequestImageError;)Lcom/iqiyi/sdk/imageload/common/Response;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v0, v4

    invoke-static {v4, v7, v0, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v0, p0, Lcom/iqiyi/sdk/imageload/common/toolbox/ImageRequest;->mMaxWidth:I

    iget v2, p0, Lcom/iqiyi/sdk/imageload/common/toolbox/ImageRequest;->mMaxHeight:I

    invoke-static {v0, v2, v3, v1}, Lcom/iqiyi/sdk/imageload/common/toolbox/ImageRequest;->getResizedDimension(IIII)I

    move-result v2

    iget v0, p0, Lcom/iqiyi/sdk/imageload/common/toolbox/ImageRequest;->mMaxHeight:I

    iget v6, p0, Lcom/iqiyi/sdk/imageload/common/toolbox/ImageRequest;->mMaxWidth:I

    invoke-static {v0, v6, v1, v3}, Lcom/iqiyi/sdk/imageload/common/toolbox/ImageRequest;->getResizedDimension(IIII)I

    move-result v0

    if-eqz v2, :cond_2

    if-nez v0, :cond_3

    :cond_2
    move v0, v1

    move v2, v3

    :cond_3
    iget v6, p0, Lcom/iqiyi/sdk/imageload/common/toolbox/ImageRequest;->mMaxWidth:I

    if-lt v6, v9, :cond_4

    iget v6, p0, Lcom/iqiyi/sdk/imageload/common/toolbox/ImageRequest;->mMaxHeight:I

    if-ge v6, v9, :cond_5

    :cond_4
    move v0, v1

    move v2, v3

    :cond_5
    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v3, v1, v2, v0}, Lcom/iqiyi/sdk/imageload/common/toolbox/ImageRequest;->findBestSampleSize(IIII)I

    move-result v1

    iput v1, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    array-length v1, v4

    invoke-static {v4, v7, v1, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-gt v3, v2, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v3, v0, :cond_7

    :cond_6
    invoke-static {v1, v2, v0, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_0

    :cond_8
    invoke-static {p1}, Lcom/iqiyi/sdk/imageload/common/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/iqiyi/sdk/imageload/common/NetworkResponse;)Lcom/iqiyi/sdk/imageload/common/Cache$Entry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iqiyi/sdk/imageload/common/Response;->success(Ljava/lang/Object;Lcom/iqiyi/sdk/imageload/common/Cache$Entry;)Lcom/iqiyi/sdk/imageload/common/Response;

    move-result-object v0

    goto :goto_1
.end method

.method static findBestSampleSize(IIII)I
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    int-to-double v2, p1

    int-to-double v4, p3

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    mul-float v1, v0, v6

    float-to-double v4, v1

    cmpg-double v1, v4, v2

    if-lez v1, :cond_0

    float-to-int v0, v0

    return v0

    :cond_0
    mul-float/2addr v0, v6

    goto :goto_0
.end method

.method private static getResizedDimension(IIII)I
    .locals 6

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    move p0, p2

    :cond_0
    :goto_0
    return p0

    :cond_1
    if-nez p0, :cond_2

    int-to-double v0, p1

    int-to-double v2, p3

    div-double/2addr v0, v2

    int-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-int p0, v0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    int-to-double v0, p3

    int-to-double v2, p2

    div-double/2addr v0, v2

    int-to-double v2, p0

    mul-double/2addr v2, v0

    int-to-double v4, p1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    int-to-double v2, p1

    div-double v0, v2, v0

    double-to-int p0, v0

    goto :goto_0
.end method


# virtual methods
.method protected deliverResponse(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/iqiyi/sdk/imageload/common/toolbox/ImageRequest;->mListener:Lcom/iqiyi/sdk/imageload/common/Response$Listener;

    invoke-interface {v0, p1}, Lcom/iqiyi/sdk/imageload/common/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/iqiyi/sdk/imageload/common/toolbox/ImageRequest;->deliverResponse(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public getPriority()Lcom/iqiyi/sdk/imageload/common/Request$Priority;
    .locals 1

    sget-object v0, Lcom/iqiyi/sdk/imageload/common/Request$Priority;->LOW:Lcom/iqiyi/sdk/imageload/common/Request$Priority;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/iqiyi/sdk/imageload/common/NetworkResponse;)Lcom/iqiyi/sdk/imageload/common/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iqiyi/sdk/imageload/common/NetworkResponse;",
            ")",
            "Lcom/iqiyi/sdk/imageload/common/Response",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    sget-object v1, Lcom/iqiyi/sdk/imageload/common/toolbox/ImageRequest;->sDecodeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/iqiyi/sdk/imageload/common/toolbox/ImageRequest;->doParse(Lcom/iqiyi/sdk/imageload/common/NetworkResponse;)Lcom/iqiyi/sdk/imageload/common/Response;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    monitor-exit v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Caught OOM for %d byte image, url=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/iqiyi/sdk/imageload/common/NetworkResponse;->data:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/iqiyi/sdk/imageload/common/toolbox/ImageRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/iqiyi/sdk/imageload/common/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/iqiyi/sdk/imageload/common/ParseError;

    invoke-direct {v2, v0}, Lcom/iqiyi/sdk/imageload/common/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/iqiyi/sdk/imageload/common/Response;->error(Lcom/iqiyi/sdk/imageload/RequestImageError;)Lcom/iqiyi/sdk/imageload/common/Response;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
