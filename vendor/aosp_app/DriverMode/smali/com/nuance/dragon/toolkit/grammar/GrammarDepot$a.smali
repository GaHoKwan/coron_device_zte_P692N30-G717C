.class final Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

.field private c:Z

.field private d:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;ZLcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    iput-boolean p3, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;->c:Z

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;->d:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;)Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    return-object v0
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;)Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$a;->d:Lcom/nuance/dragon/toolkit/grammar/GrammarDepot$GrammarUploadListener;

    return-object v0
.end method
