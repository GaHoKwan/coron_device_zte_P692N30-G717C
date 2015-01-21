.class public Lcom/zte/zdm/omacp/application/platform/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/omacp/b;


# static fields
.field public static final a:Ljava/lang/String; = "PlatformImpl"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/zdm/omacp/application/platform/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    new-instance v0, Lcom/zte/zdm/omacp/application/b/a;

    iget-object v1, p0, Lcom/zte/zdm/omacp/application/platform/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/zdm/omacp/application/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/zte/zdm/omacp/application/b/a;->a()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/StringBuffer;)I
    .locals 2

    const-string v0, "PlatformImpl"

    const-string v1, "askforInputPin"

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/omacp/application/b/d;

    iget-object v1, p0, Lcom/zte/zdm/omacp/application/platform/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/zdm/omacp/application/b/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/zte/zdm/omacp/application/b/d;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/zte/zdm/omacp/application/b/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v1
.end method

.method public a(I)V
    .locals 2

    new-instance v0, Lcom/zte/zdm/omacp/application/b/c;

    iget-object v1, p0, Lcom/zte/zdm/omacp/application/platform/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zte/zdm/omacp/application/b/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/zte/zdm/omacp/application/b/c;->a(I)V

    invoke-virtual {v0}, Lcom/zte/zdm/omacp/application/b/c;->a()I

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/omacp/application/platform/a;->b:Landroid/content/Context;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/omacp/application/platform/a;->b:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
