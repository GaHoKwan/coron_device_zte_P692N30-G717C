.class final Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

.field private b:Z

.field private c:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;Lcom/nuance/dragon/toolkit/cloudservices/Transaction;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;->a:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;)Lcom/nuance/dragon/toolkit/cloudservices/Transaction;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;->a:Lcom/nuance/dragon/toolkit/cloudservices/Transaction;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;->c:Z

    return v0
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer$a;->b:Z

    return v0
.end method
