.class public Lcom/zte/zdm/application/d/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "ParseDDdescription"

.field private static final b:Ljava/lang/String; = "TargetVersion"

.field private static final c:Ljava/lang/String; = "ReleaseNotes"

.field private static final d:Ljava/lang/String; = "NeedBackUp"

.field private static final e:Ljava/lang/String; = "WifiOnly"

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Lcom/zte/zdm/application/d/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/zte/zdm/application/d/f;->f:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/zte/zdm/application/d/f;->g:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/zte/zdm/application/d/f;->h:Lcom/zte/zdm/application/d/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/zte/zdm/application/d/f;->g()V

    return-void
.end method

.method public static a()Lcom/zte/zdm/application/d/f;
    .locals 2

    const-string v0, "ParseDDdescription"

    const-string v1, "BatteryMonitorReceiver getInstance() "

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/zte/zdm/application/d/f;->h:Lcom/zte/zdm/application/d/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/application/d/f;

    invoke-direct {v0}, Lcom/zte/zdm/application/d/f;-><init>()V

    sput-object v0, Lcom/zte/zdm/application/d/f;->h:Lcom/zte/zdm/application/d/f;

    :cond_0
    sget-object v0, Lcom/zte/zdm/application/d/f;->h:Lcom/zte/zdm/application/d/f;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const-string v1, ""

    invoke-static {}, Lcom/zte/zdm/application/d/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f090090

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/d/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/zte/zdm/application/d/f;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Z)V
    .locals 3

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "NeedBackUp"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zte/zdm/application/d/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const-string v1, ""

    invoke-static {}, Lcom/zte/zdm/application/d/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f090092

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/d/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f090091

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/zte/zdm/application/d/f;->g:Ljava/lang/String;

    return-void
.end method

.method public static b(Z)V
    .locals 3

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "WifiOnly"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zte/zdm/application/d/f;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Z
    .locals 2

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "NeedBackUp"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .locals 2

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "WifiOnly"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/a/a;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static f()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    invoke-static {v0}, Lcom/zte/zdm/application/d/f;->a(Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {v0}, Lcom/zte/zdm/application/d/f;->b(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/zte/zdm/application/d/f;->a(Z)V

    invoke-static {v1}, Lcom/zte/zdm/application/d/f;->b(Z)V

    return-void
.end method

.method private g()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, ""

    invoke-static {v0}, Lcom/zte/zdm/application/d/f;->a(Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {v0}, Lcom/zte/zdm/application/d/f;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "NeedBackUp"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "WifiOnly"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/zte/zdm/application/d/f;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/zte/zdm/application/d/f;->a(Ljava/lang/String;)V

    aget-object v0, v3, v8

    invoke-static {v0}, Lcom/zte/zdm/application/d/f;->b(Ljava/lang/String;)V

    :cond_3
    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_a

    aget-object v0, v3, v1

    const-string v5, "ParseDDdescription"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "splidDDdescription:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v6, v5, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "TargetVersion"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v0}, Lcom/zte/zdm/application/d/f;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v5, "ReleaseNotes"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "\\n"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "\\n"

    const-string v6, "\n"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-static {v0}, Lcom/zte/zdm/application/d/f;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string v5, "NeedBackUp"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "True"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v5, "NeedBackUp"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_2

    :cond_9
    const-string v5, "WifiOnly"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "true"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v5, "WifiOnly"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/zte/zdm/application/a/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_2

    :cond_a
    const-string v0, "ParseDDdescription"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "splidDDdescription sTargetVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zte/zdm/application/d/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ParseDDdescription"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "splidDDdescription sReleaseNotes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zte/zdm/application/d/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
