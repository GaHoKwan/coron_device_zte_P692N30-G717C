.class public Lcom/zte/zdm/heartyservice/ui/p;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/zte/zdm/heartyservice/ui/p;


# instance fields
.field private a:Ljava/util/EnumMap;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/zte/zdm/heartyservice/ui/q;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/zte/zdm/heartyservice/ui/p;->a:Ljava/util/EnumMap;

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/p;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/zte/zdm/heartyservice/ui/q;->a:Lcom/zte/zdm/heartyservice/ui/q;

    const-class v2, Lcom/zte/zdm/heartyservice/ui/HeartyServiceMainActivity;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/p;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/zte/zdm/heartyservice/ui/q;->b:Lcom/zte/zdm/heartyservice/ui/q;

    const-class v2, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/p;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/zte/zdm/heartyservice/ui/q;->c:Lcom/zte/zdm/heartyservice/ui/q;

    const-class v2, Lcom/zte/zdm/heartyservice/ui/HeartyServiceMsgActivity;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/p;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/zte/zdm/heartyservice/ui/q;->d:Lcom/zte/zdm/heartyservice/ui/q;

    const-class v2, Lcom/zte/zdm/heartyservice/ui/HeartyServiceStatusActivity;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/p;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/zte/zdm/heartyservice/ui/q;->e:Lcom/zte/zdm/heartyservice/ui/q;

    const-class v2, Lcom/zte/zdm/heartyservice/ui/HeartyServiceUpdateSettingsActivity;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/p;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/zte/zdm/heartyservice/ui/q;->f:Lcom/zte/zdm/heartyservice/ui/q;

    const-class v2, Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/p;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/zte/zdm/heartyservice/ui/q;->g:Lcom/zte/zdm/heartyservice/ui/q;

    const-class v2, Lcom/zte/zdm/heartyservice/ui/HeartyServiceNetworkUpdateActivity;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcom/zte/zdm/heartyservice/ui/p;
    .locals 1

    sget-object v0, Lcom/zte/zdm/heartyservice/ui/p;->b:Lcom/zte/zdm/heartyservice/ui/p;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/heartyservice/ui/p;

    invoke-direct {v0}, Lcom/zte/zdm/heartyservice/ui/p;-><init>()V

    sput-object v0, Lcom/zte/zdm/heartyservice/ui/p;->b:Lcom/zte/zdm/heartyservice/ui/p;

    :cond_0
    sget-object v0, Lcom/zte/zdm/heartyservice/ui/p;->b:Lcom/zte/zdm/heartyservice/ui/p;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/zte/zdm/heartyservice/ui/q;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/zte/zdm/heartyservice/ui/p;->a(Landroid/content/Context;Lcom/zte/zdm/heartyservice/ui/q;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/zte/zdm/heartyservice/ui/q;Landroid/os/Bundle;)V
    .locals 2

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/p;->a:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p3, :cond_0

    invoke-virtual {v1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
