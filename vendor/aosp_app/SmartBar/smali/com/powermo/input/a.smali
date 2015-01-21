.class public interface abstract Lcom/powermo/input/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v2, 0x457ff000

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/powermo/input/a;->a:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/MotionEvent;Lcom/powermo/input/c;II)V
.end method

.method public abstract a([Lcom/powermo/input/d;I)Z
.end method
