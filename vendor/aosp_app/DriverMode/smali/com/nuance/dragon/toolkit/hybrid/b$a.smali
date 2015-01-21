.class final Lcom/nuance/dragon/toolkit/hybrid/b$a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

.field private b:Ljava/util/List;

.field private c:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

.field private d:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;

.field private e:Z

.field private f:Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;

.field private g:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

.field private h:Lcom/nuance/dragon/toolkit/vocon/VoconError;

.field private i:Lcom/nuance/dragon/toolkit/util/internal/a$b;

.field private j:Ljava/util/List;

.field private k:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/nuance/dragon/toolkit/hybrid/b$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/b$a;->d:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/b$a;->a:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/b$a;->c:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;)Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/b$a;->f:Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/util/internal/a$b;)Lcom/nuance/dragon/toolkit/util/internal/a$b;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/b$a;->i:Lcom/nuance/dragon/toolkit/util/internal/a$b;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/vocon/VoconError;)Lcom/nuance/dragon/toolkit/vocon/VoconError;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/b$a;->h:Lcom/nuance/dragon/toolkit/vocon/VoconError;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$a;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/hybrid/b$a;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/b$a;->b:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/hybrid/b$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/dragon/toolkit/hybrid/b$a;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/hybrid/b$a;Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/b$a;->g:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    return-object p1
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/util/internal/a$b;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$a;->i:Lcom/nuance/dragon/toolkit/util/internal/a$b;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/hybrid/b$a;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/hybrid/b$a;->j:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/hybrid/b$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/dragon/toolkit/hybrid/b$a;->e:Z

    return p1
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$a;->a:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognizer;

    return-object v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$a;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$a;->e:Z

    return v0
.end method

.method static synthetic f(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$a;->k:Z

    return v0
.end method

.method static synthetic g(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$a;->f:Lcom/nuance/dragon/toolkit/recognition/LocalRecognitionResult;

    return-object v0
.end method

.method static synthetic h(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$a;->d:Lcom/nuance/dragon/toolkit/cloudservices/recognizer/CloudRecognitionError;

    return-object v0
.end method

.method static synthetic i(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$a;->g:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    return-object v0
.end method

.method static synthetic j(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/vocon/VoconError;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$a;->h:Lcom/nuance/dragon/toolkit/vocon/VoconError;

    return-object v0
.end method

.method static synthetic k(Lcom/nuance/dragon/toolkit/hybrid/b$a;)Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/hybrid/b$a;->c:Lcom/nuance/dragon/toolkit/recognition/InterpretedRecognition;

    return-object v0
.end method
