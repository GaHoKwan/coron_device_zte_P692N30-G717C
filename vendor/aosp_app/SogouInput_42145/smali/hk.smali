.class public Lhk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public a:Landroid/graphics/drawable/Drawable;

.field public a:Ljava/lang/String;

.field public a:Z

.field public b:I

.field public b:Landroid/graphics/drawable/Drawable;

.field public b:Ljava/lang/String;

.field public b:Z

.field public c:I

.field public c:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/String;

.field public f:Z

.field public g:Ljava/lang/String;

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhk;->a:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Lhk;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget-object v0, p1, Lhk;->a:Ljava/lang/String;

    iput-object v0, p0, Lhk;->a:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lhk;->b:Ljava/lang/String;

    iput-object v0, p0, Lhk;->b:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lhk;->c:Ljava/lang/String;

    iput-object v0, p0, Lhk;->c:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lhk;->d:Ljava/lang/String;

    iput-object v0, p0, Lhk;->d:Ljava/lang/String;

    .line 48
    iget-boolean v0, p1, Lhk;->a:Z

    iput-boolean v0, p0, Lhk;->a:Z

    .line 49
    iget-boolean v0, p1, Lhk;->b:Z

    iput-boolean v0, p0, Lhk;->b:Z

    .line 50
    iget-object v0, p1, Lhk;->e:Ljava/lang/String;

    iput-object v0, p0, Lhk;->e:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lhk;->f:Ljava/lang/String;

    iput-object v0, p0, Lhk;->f:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lhk;->g:Ljava/lang/String;

    iput-object v0, p0, Lhk;->g:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lhk;->h:Ljava/lang/String;

    iput-object v0, p0, Lhk;->h:Ljava/lang/String;

    .line 54
    iget v0, p1, Lhk;->a:I

    iput v0, p0, Lhk;->a:I

    .line 55
    iget-object v0, p1, Lhk;->a:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lhk;->a:Landroid/graphics/drawable/Drawable;

    .line 56
    iget-object v0, p1, Lhk;->b:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lhk;->b:Landroid/graphics/drawable/Drawable;

    .line 57
    iget-boolean v0, p1, Lhk;->d:Z

    iput-boolean v0, p0, Lhk;->d:Z

    .line 58
    iget-object v0, p1, Lhk;->i:Ljava/lang/String;

    iput-object v0, p0, Lhk;->i:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Lhk;->j:Ljava/lang/String;

    iput-object v0, p0, Lhk;->j:Ljava/lang/String;

    .line 60
    iget v0, p1, Lhk;->b:I

    iput v0, p0, Lhk;->b:I

    .line 61
    iget v0, p1, Lhk;->c:I

    iput v0, p0, Lhk;->c:I

    .line 62
    iget-object v0, p1, Lhk;->k:Ljava/lang/String;

    iput-object v0, p0, Lhk;->k:Ljava/lang/String;

    .line 63
    iget-boolean v0, p1, Lhk;->e:Z

    iput-boolean v0, p0, Lhk;->e:Z

    .line 64
    iget-boolean v0, p1, Lhk;->f:Z

    iput-boolean v0, p0, Lhk;->f:Z

    .line 65
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item rawname = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lhk;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  Path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lhk;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " installed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lhk;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " protocol = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lhk;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
