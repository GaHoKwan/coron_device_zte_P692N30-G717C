.class final Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

.field private b:Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;I)I
    .locals 0

    iput p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->g:I

    return p1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->a:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->b:Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;)Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->b:Lcom/nuance/dragon/toolkit/grammar/WordList$WordIterator;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->c:Z

    return p1
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->f:I

    return v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->g:I

    return v0
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->e:Z

    return v0
.end method

.method static synthetic f(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)I
    .locals 2

    iget v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->f:I

    return v0
.end method

.method static synthetic g(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->d:Z

    return v0
.end method

.method static synthetic h(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->d:Z

    return v0
.end method

.method static synthetic i(Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploader$a;->a:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    return-object v0
.end method
