.class public Lcom/powermo/smartshow/frameworks/test/a;
.super Ljava/lang/Object;


# static fields
.field public static final RESULT_DEFAULT:I = 0x1

.field public static final RESULT_FAIL:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x2


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Landroid/graphics/Bitmap;

.field f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/a;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/a;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/server/am/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/test/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/a;

    invoke-virtual {v0}, Lcom/android/server/am/a;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Unknown"

    goto :goto_0
.end method
