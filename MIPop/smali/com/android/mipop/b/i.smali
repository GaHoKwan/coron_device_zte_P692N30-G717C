.class public Lcom/android/mipop/b/i;
.super Lcom/android/mipop/b/l;


# static fields
.field public static final NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/mipop/b/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mipop/b/i;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/mipop/b/l;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/android/mipop/b/i;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, p0}, Lcom/android/mipop/b/i;->a(Ljava/lang/String;Lcom/android/mipop/b/l;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mipop/b/i;->setSoundEffectsEnabled(Z)V

    const v0, 0x7f020037

    invoke-virtual {p0, v0}, Lcom/android/mipop/b/i;->setImageResource(I)V

    const v0, 0x7f020035

    const v1, 0x7f020036

    invoke-virtual {p0, v0, v1}, Lcom/android/mipop/b/i;->n(II)V

    return-void
.end method


# virtual methods
.method public p()V
    .locals 2

    const-string v0, "CLICK"

    const-string v1, "menu click"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mipop/b/i;->playSoundEffect(I)V

    new-instance v0, Lcom/android/mipop/b/f;

    invoke-direct {v0, p0}, Lcom/android/mipop/b/f;-><init>(Lcom/android/mipop/b/i;)V

    invoke-virtual {v0}, Lcom/android/mipop/b/f;->start()V

    return-void
.end method

.method public q()V
    .locals 2

    const-string v0, "Suhao"

    const-string v1, "menu  long click"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
