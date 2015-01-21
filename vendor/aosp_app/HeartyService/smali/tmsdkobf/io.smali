.class public Ltmsdkobf/io;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;

.field public d:I

.field public e:B

.field public errorCode:I

.field public f:I

.field public fileName:Ljava/lang/String;

.field public g:I

.field public h:I

.field public j:B

.field public k:I

.field public l:Ljava/lang/String;

.field public m:I

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:I

.field public q:I

.field public r:I

.field public s:Ljava/lang/String;

.field public t:I

.field public u:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/io;->fileName:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/io;->c:Ljava/lang/String;

    .line 20
    iput v1, p0, Ltmsdkobf/io;->d:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/io;->url:Ljava/lang/String;

    .line 30
    iput-byte v1, p0, Ltmsdkobf/io;->e:B

    .line 35
    iput v1, p0, Ltmsdkobf/io;->f:I

    .line 40
    iput v1, p0, Ltmsdkobf/io;->g:I

    .line 45
    iput v1, p0, Ltmsdkobf/io;->h:I

    .line 50
    iput-byte v1, p0, Ltmsdkobf/io;->j:B

    .line 55
    iput v1, p0, Ltmsdkobf/io;->errorCode:I

    .line 60
    iput v1, p0, Ltmsdkobf/io;->k:I

    .line 65
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/io;->l:Ljava/lang/String;

    .line 70
    iput v1, p0, Ltmsdkobf/io;->m:I

    .line 75
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/io;->n:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/io;->o:Ljava/lang/String;

    .line 85
    iput v2, p0, Ltmsdkobf/io;->p:I

    .line 90
    iput v2, p0, Ltmsdkobf/io;->q:I

    .line 95
    iput v1, p0, Ltmsdkobf/io;->r:I

    .line 100
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/io;->s:Ljava/lang/String;

    .line 105
    iput v2, p0, Ltmsdkobf/io;->t:I

    .line 110
    iput v1, p0, Ltmsdkobf/io;->u:I

    return-void
.end method
