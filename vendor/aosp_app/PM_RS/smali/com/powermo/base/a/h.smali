.class public final Lcom/powermo/base/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/powermo/base/d;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/powermo/base/i;

.field private final c:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "PersistConfigurationDataSource"

    invoke-static {v0}, Lcom/powermo/base/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powermo/base/a/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/base/a/h;->b:Lcom/powermo/base/i;

    const-string v0, "com.powermo.configurations"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/base/a/h;->c:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "config."

    return-object v0
.end method

.method public final a(Lcom/powermo/base/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/powermo/base/a/h;->b(Lcom/powermo/base/b;)V

    return-void
.end method

.method public final a(Lcom/powermo/base/i;)V
    .locals 5

    iput-object p1, p0, Lcom/powermo/base/a/h;->b:Lcom/powermo/base/i;

    iget-object v0, p0, Lcom/powermo/base/a/h;->b:Lcom/powermo/base/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/base/a/h;->c:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/powermo/base/a/h;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    new-instance v2, Lcom/powermo/base/e;

    invoke-direct {v2, v0}, Lcom/powermo/base/e;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/powermo/base/e;->b(Ljava/lang/Object;)V

    move-object v0, v2

    :goto_2
    iget-object v1, p0, Lcom/powermo/base/a/h;->b:Lcom/powermo/base/i;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/powermo/base/i;->a(Lcom/powermo/base/b;Z)V

    goto :goto_1

    :cond_3
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    new-instance v2, Lcom/powermo/base/e;

    invoke-direct {v2, v0}, Lcom/powermo/base/e;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v2, v1}, Lcom/powermo/base/e;->b(Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_2

    :cond_4
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    new-instance v2, Lcom/powermo/base/e;

    invoke-direct {v2, v0}, Lcom/powermo/base/e;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Lcom/powermo/base/e;->b(Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_2

    :cond_5
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_6

    new-instance v2, Lcom/powermo/base/e;

    invoke-direct {v2, v0}, Lcom/powermo/base/e;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v2, v1}, Lcom/powermo/base/e;->b(Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_2

    :cond_6
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_7

    new-instance v2, Lcom/powermo/base/e;

    invoke-direct {v2, v0}, Lcom/powermo/base/e;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v2, v1}, Lcom/powermo/base/e;->b(Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/base/a/h;->b:Lcom/powermo/base/i;

    return-void
.end method

.method public final b(Lcom/powermo/base/b;)V
    .locals 6

    iget-object v0, p0, Lcom/powermo/base/a/h;->b:Lcom/powermo/base/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/base/a/h;->c:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/powermo/base/a/h;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/powermo/base/b;->f()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/powermo/base/b;->a()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_2
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/powermo/base/b;->a()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    goto :goto_1

    :cond_3
    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/powermo/base/b;->a()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    goto :goto_1

    :cond_4
    instance-of v3, v0, Ljava/lang/Long;

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/powermo/base/b;->a()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    goto :goto_1

    :cond_5
    instance-of v3, v0, Ljava/lang/Float;

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lcom/powermo/base/b;->a()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method
