.class public final Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private final b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

.field private final c:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

.field private final d:Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;Landroid/content/Context;)V
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "context"

    invoke-static {v0, p3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cloudConfig and vocalizerConfig"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->d:Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;->createCloudServices(Landroid/content/Context;Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;)Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    :goto_0
    if-eqz p2, :cond_1

    sget-object v1, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;->VOCALIZER_EXPRESSIVE:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;

    new-instance v2, Lcom/nuance/dragon/toolkit/file/FileManager;

    const-string v3, ".jpg"

    const-string v4, "vexpressive"

    const-string v5, "vexpressive"

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/nuance/dragon/toolkit/file/FileManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;->createVocalizer(Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer$Engine;Lcom/nuance/dragon/toolkit/file/FileManager;)Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->c:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->c:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    invoke-virtual {v0, p2}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;->load(Lcom/nuance/dragon/toolkit/vocalizer/VocalizerConfig;)V

    :goto_1
    return-void

    :cond_0
    iput-object v3, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->d:Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;

    iput-object v3, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    goto :goto_0

    :cond_1
    iput-object v3, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->c:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    goto :goto_1
.end method


# virtual methods
.method public final createCloudRecognizer(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;ILcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$Listener;)Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;
    .locals 7

    const/4 v1, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->a:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    const-string v0, "recogSpec"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "listener"

    invoke-static {v0, p3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    const/4 v4, 0x0

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;ILjava/lang/String;ZLcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$Listener;)V

    return-object v0

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_1
.end method

.method public final createCloudRecognizer(Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;ILjava/lang/String;ZLcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$Listener;)Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->a:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    const-string v0, "recogSpec"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fileName"

    invoke-static {v0, p3}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "listener"

    invoke-static {v0, p5}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;Lcom/nuance/dragon/toolkit/cloudservices/recognizer/RecogSpec;ILjava/lang/String;ZLcom/nuance/dragon/toolkit/speechkit/SKCloudRecognizer$Listener;)V

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final createCloudVocalizer(Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$Listener;)Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->a:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    new-instance v0, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->d:Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;

    invoke-direct {v0, v1, v2, p1}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer;-><init>(Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;Lcom/nuance/dragon/toolkit/speechkit/SKCloudVocalizer$Listener;)V

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final createVocalizer(Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$Listener;)Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->a:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->c:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    new-instance v0, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->c:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    invoke-direct {v0, v1, p1}, Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer;-><init>(Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;Lcom/nuance/dragon/toolkit/speechkit/SKVocalizer$Listener;)V

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final createVocalizerPrompt(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/speechkit/SKPrompt;
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->a:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->c:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {p0, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    const-string v0, "text"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->c:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    invoke-direct {v0, v1, p1}, Lcom/nuance/dragon/toolkit/speechkit/SKPrompt$b;-><init>(Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;Ljava/lang/String;)V

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final getSessionID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;->getSessionID()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final release()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->a:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {p0, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->b:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices;->release()V

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->c:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->c:Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;

    invoke-virtual {v0}, Lcom/nuance/dragon/toolkit/vocalizer/Vocalizer;->release()V

    :cond_1
    iput-boolean v1, p0, Lcom/nuance/dragon/toolkit/speechkit/SpeechKit;->a:Z

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
