.class public Lorg/iqiyi/datareact/lpt3;
.super Ljava/lang/Object;


# instance fields
.field final fnv:Lorg/iqiyi/datareact/lpt4;

.field final fnw:[Ljava/lang/String;

.field final method:Ljava/lang/reflect/Method;

.field methodString:Ljava/lang/String;

.field final priority:I

.field final sticky:Z


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;[Ljava/lang/String;Lorg/iqiyi/datareact/lpt4;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/iqiyi/datareact/lpt3;->method:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lorg/iqiyi/datareact/lpt3;->fnv:Lorg/iqiyi/datareact/lpt4;

    iput-object p2, p0, Lorg/iqiyi/datareact/lpt3;->fnw:[Ljava/lang/String;

    iput p4, p0, Lorg/iqiyi/datareact/lpt3;->priority:I

    iput-boolean p5, p0, Lorg/iqiyi/datareact/lpt3;->sticky:Z

    return-void
.end method

.method private declared-synchronized checkMethodString()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/iqiyi/datareact/lpt3;->methodString:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lorg/iqiyi/datareact/lpt3;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/iqiyi/datareact/lpt3;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/iqiyi/datareact/lpt3;->fnw:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/iqiyi/datareact/lpt3;->methodString:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/iqiyi/datareact/lpt3;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/iqiyi/datareact/lpt3;->checkMethodString()V

    check-cast p1, Lorg/iqiyi/datareact/lpt3;

    invoke-direct {p1}, Lorg/iqiyi/datareact/lpt3;->checkMethodString()V

    iget-object v0, p0, Lorg/iqiyi/datareact/lpt3;->methodString:Ljava/lang/String;

    iget-object v1, p1, Lorg/iqiyi/datareact/lpt3;->methodString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/iqiyi/datareact/lpt3;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    return v0
.end method
