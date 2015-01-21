.class public final Lcom/nuance/a/a/a/c/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field public static final b:Ljava/lang/String;

.field public static final c:Z

.field public static final d:Z

.field public static final e:Z

.field public static final f:Z

.field public static final g:Z

.field public static final h:Z

.field public static final i:Z

.field private static final j:Z

.field private static final k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/nuance/a/a/a/c/a/a;->a:I

    :try_start_0
    const-class v0, Landroid/os/Build;

    const-string v1, "MANUFACTURER"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-object v0, Lcom/nuance/a/a/a/c/a/a;->b:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SGH-T959"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SAMSUNG-SGH-I897"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SGH-I897"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GT-I9000"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/nuance/a/a/a/c/a/a;->c:Z

    const-string v1, "htc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "PC36100"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ADR6300"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "HTC Glacier"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "T-Mobile myTouch 4G"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "T-Mobile G2"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    move v1, v2

    :goto_2
    sput-boolean v1, Lcom/nuance/a/a/a/c/a/a;->d:Z

    const-string v1, "Motorola_i1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/nuance/a/a/a/c/a/a;->e:Z

    const-string v1, "Motorola"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "MB860"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_3
    sput-boolean v1, Lcom/nuance/a/a/a/c/a/a;->k:Z

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lcom/nuance/a/a/a/c/a/a;->a:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    move v0, v2

    :goto_4
    sput-boolean v0, Lcom/nuance/a/a/a/c/a/a;->j:Z

    sput-boolean v0, Lcom/nuance/a/a/a/c/a/a;->i:Z

    sget-boolean v0, Lcom/nuance/a/a/a/c/a/a;->c:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/nuance/a/a/a/c/a/a;->e:Z

    if-eqz v0, :cond_7

    :cond_2
    move v0, v2

    :goto_5
    sput-boolean v0, Lcom/nuance/a/a/a/c/a/a;->f:Z

    sget-boolean v0, Lcom/nuance/a/a/a/c/a/a;->c:Z

    if-nez v0, :cond_8

    :goto_6
    sput-boolean v2, Lcom/nuance/a/a/a/c/a/a;->g:Z

    sget-boolean v0, Lcom/nuance/a/a/a/c/a/a;->k:Z

    sput-boolean v0, Lcom/nuance/a/a/a/c/a/a;->h:Z

    return-void

    :catch_0
    move-exception v0

    const-string v0, ""

    goto/16 :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_3

    :cond_6
    move v0, v3

    goto :goto_4

    :cond_7
    move v0, v3

    goto :goto_5

    :cond_8
    move v2, v3

    goto :goto_6
.end method
