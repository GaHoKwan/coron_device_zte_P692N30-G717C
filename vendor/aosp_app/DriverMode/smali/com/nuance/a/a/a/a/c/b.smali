.class public Lcom/nuance/a/a/a/a/c/b;
.super Ljava/lang/Object;


# static fields
.field private static final e:Lcom/nuance/a/a/a/a/b/a/b$a;


# instance fields
.field public a:B

.field public b:B

.field public c:S

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/a/a/a/a/c/b;

    invoke-static {v0}, Lcom/nuance/a/a/a/a/b/a/b;->a(Ljava/lang/Class;)Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    sput-object v0, Lcom/nuance/a/a/a/a/c/b;->e:Lcom/nuance/a/a/a/a/b/a/b$a;

    return-void
.end method

.method public constructor <init>(BBSI)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/a/a/a/a/c/b;->e:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/a/c/b;->e:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Constructing XModeMsgHeader(protocol="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_0
    iput-byte p1, p0, Lcom/nuance/a/a/a/a/c/b;->a:B

    iput-byte p2, p0, Lcom/nuance/a/a/a/a/c/b;->b:B

    iput-short p3, p0, Lcom/nuance/a/a/a/a/c/b;->c:S

    iput p4, p0, Lcom/nuance/a/a/a/a/c/b;->d:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/a/a/a/a/c/b;->e:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/a/c/b;->e:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "Constructing XModeMsgHeader(byte[])"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    sget-object v0, Lcom/nuance/a/a/a/a/c/b;->e:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0, p1}, Lcom/nuance/a/a/a/a/b/a/b$a;->a([B)V

    :cond_0
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/nuance/a/a/a/a/c/b;->a:B

    const/4 v0, 0x1

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/nuance/a/a/a/a/c/b;->b:B

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/nuance/a/a/a/a/d/b;->a([BI)S

    move-result v0

    iput-short v0, p0, Lcom/nuance/a/a/a/a/c/b;->c:S

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/nuance/a/a/a/a/d/b;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/nuance/a/a/a/a/c/b;->d:I

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 3

    sget-object v0, Lcom/nuance/a/a/a/a/c/b;->e:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/a/c/b;->e:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v1, "XModeMsgHeader.getBytes()"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/nuance/a/a/a/a/c/b;->a:B

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    iget-byte v2, p0, Lcom/nuance/a/a/a/a/c/b;->b:B

    aput-byte v2, v0, v1

    iget-short v1, p0, Lcom/nuance/a/a/a/a/c/b;->c:S

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/nuance/a/a/a/a/d/b;->a(S[BI)V

    iget v1, p0, Lcom/nuance/a/a/a/a/c/b;->d:I

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Lcom/nuance/a/a/a/a/d/b;->a(I[BI)V

    sget-object v1, Lcom/nuance/a/a/a/a/c/b;->e:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/nuance/a/a/a/a/c/b;->e:Lcom/nuance/a/a/a/a/b/a/b$a;

    const-string v2, "Generated: "

    invoke-virtual {v1, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->a(Ljava/lang/Object;)V

    sget-object v1, Lcom/nuance/a/a/a/a/c/b;->e:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v1, v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->a([B)V

    :cond_1
    return-object v0
.end method
