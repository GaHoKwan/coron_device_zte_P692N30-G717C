.class public Lxq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Landroid/graphics/drawable/Drawable;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p1, p0, Lxq;->b:Ljava/lang/String;

    .line 295
    iput-object p2, p0, Lxq;->a:Ljava/lang/String;

    .line 296
    iput-object p3, p0, Lxq;->c:Ljava/lang/String;

    .line 297
    iput-object p4, p0, Lxq;->a:Landroid/graphics/drawable/Drawable;

    .line 298
    iput-boolean p5, p0, Lxq;->a:Z

    .line 299
    iput p6, p0, Lxq;->a:I

    .line 300
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lxq;->a:I

    return v0
.end method

.method public a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lxq;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lxq;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lxq;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lxq;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lxq;->c:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
