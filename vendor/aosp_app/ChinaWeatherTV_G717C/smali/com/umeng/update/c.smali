.class public Lcom/umeng/update/c;
.super Ljava/lang/Object;
.source "UpdateConfig.java"


# static fields
.field public static final a:Ljava/lang/String; = "update"

.field public static final b:Ljava/lang/String; = "2.4.0.20131230"

.field public static final c:Ljava/lang/String; = "1.4"

.field public static final d:Ljava/lang/String; = "com.umeng.common.net.DownloadingService"

.field public static final e:Ljava/lang/String; = "com.umeng.update.UpdateDialogActivity"

.field public static final f:Ljava/lang/String; = "android.permission.WRITE_EXTERNAL_STORAGE"

.field public static final g:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_STATE"

.field public static final h:Ljava/lang/String; = "android.permission.INTERNET"

.field public static final i:Ljava/lang/String; = "UMUpdateCheck"

.field private static final j:Ljava/lang/String; = "umeng_update"

.field private static final k:Ljava/lang/String; = "ignore"

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Z

.field private static o:Z

.field private static p:Z

.field private static q:Z

.field private static r:Z

.field private static s:Z

.field private static t:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 32
    sput-boolean v0, Lcom/umeng/update/c;->n:Z

    .line 33
    sput-boolean v0, Lcom/umeng/update/c;->o:Z

    .line 34
    sput-boolean v1, Lcom/umeng/update/c;->p:Z

    .line 35
    sput-boolean v0, Lcom/umeng/update/c;->q:Z

    .line 36
    sput-boolean v1, Lcom/umeng/update/c;->r:Z

    .line 37
    sput-boolean v0, Lcom/umeng/update/c;->s:Z

    .line 38
    sput v1, Lcom/umeng/update/c;->t:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 49
    sget-object v0, Lcom/umeng/update/c;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 50
    invoke-static {p0}, Lcom/umeng/common/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/update/c;->l:Ljava/lang/String;

    .line 53
    :cond_0
    sget-object v0, Lcom/umeng/update/c;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static a(I)V
    .locals 0
    .parameter

    .prologue
    .line 124
    sput p0, Lcom/umeng/update/c;->t:I

    .line 125
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "umeng_update"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ignore"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 68
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    sput-object p0, Lcom/umeng/update/c;->l:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 84
    sput-boolean p0, Lcom/umeng/update/c;->n:Z

    .line 85
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/umeng/update/c;->n:Z

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 57
    sget-object v0, Lcom/umeng/update/c;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 58
    invoke-static {p0}, Lcom/umeng/common/b;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/update/c;->m:Ljava/lang/String;

    .line 61
    :cond_0
    sget-object v0, Lcom/umeng/update/c;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    sput-object p0, Lcom/umeng/update/c;->m:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 92
    sput-boolean p0, Lcom/umeng/update/c;->o:Z

    .line 93
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 88
    sget-boolean v0, Lcom/umeng/update/c;->o:Z

    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "umeng_update"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ignore"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 76
    :cond_0
    return-object v0
.end method

.method public static c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 100
    sput-boolean p0, Lcom/umeng/update/c;->p:Z

    .line 101
    return-void
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 96
    sget-boolean v0, Lcom/umeng/update/c;->p:Z

    return v0
.end method

.method public static d(Z)V
    .locals 0
    .parameter

    .prologue
    .line 108
    sput-boolean p0, Lcom/umeng/update/c;->q:Z

    .line 109
    return-void
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/umeng/update/c;->q:Z

    return v0
.end method

.method public static e(Z)V
    .locals 0
    .parameter

    .prologue
    .line 116
    sput-boolean p0, Lcom/umeng/update/c;->r:Z

    .line 117
    return-void
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 112
    sget-boolean v0, Lcom/umeng/update/c;->r:Z

    return v0
.end method

.method public static f()I
    .locals 1

    .prologue
    .line 120
    sget v0, Lcom/umeng/update/c;->t:I

    return v0
.end method

.method public static f(Z)V
    .locals 0
    .parameter

    .prologue
    .line 132
    sput-boolean p0, Lcom/umeng/update/c;->s:Z

    .line 133
    return-void
.end method

.method public static g()Z
    .locals 1

    .prologue
    .line 128
    sget-boolean v0, Lcom/umeng/update/c;->s:Z

    return v0
.end method
