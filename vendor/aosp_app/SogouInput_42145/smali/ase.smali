.class Lase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field final synthetic a:Lasd;

.field public a:Z

.field private a:[I

.field private b:I

.field public b:Z

.field private b:[I

.field private c:I

.field public c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method constructor <init>(Lasd;)V
    .locals 1
    .parameter

    .prologue
    .line 973
    iput-object p1, p0, Lase;->a:Lasd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 980
    sget-object v0, Lcom/sohu/inputmethod/engine/IMEInterface;->IME_NAMES:[Ljava/lang/CharSequence;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lase;->a:[I

    .line 981
    sget-object v0, Lcom/sohu/inputmethod/engine/IMEInterface;->IME_NAMES:[Ljava/lang/CharSequence;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lase;->b:[I

    .line 988
    const/4 v0, 0x1

    iput v0, p0, Lase;->c:I

    .line 989
    const/4 v0, 0x2

    iput v0, p0, Lase;->d:I

    return-void
.end method

.method private a(I)I
    .locals 1
    .parameter

    .prologue
    .line 1049
    iget-boolean v0, p0, Lase;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lase;->b:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lase;->a:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method static synthetic a(Lase;)I
    .locals 1
    .parameter

    .prologue
    .line 973
    iget v0, p0, Lase;->c:I

    return v0
.end method

.method static synthetic a(Lase;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 973
    iput p1, p0, Lase;->e:I

    return p1
.end method

.method private final a()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1061
    invoke-static {v4}, Lcom/sohu/inputmethod/engine/IMEInterface;->getIMEIndexByType(I)I

    move-result v0

    .line 1062
    iget-object v1, p0, Lase;->a:[I

    iget v2, p0, Lase;->e:I

    aput v2, v1, v0

    .line 1063
    iget-object v1, p0, Lase;->b:[I

    iget v2, p0, Lase;->f:I

    aput v2, v1, v0

    .line 1064
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getIMEIndexByType(I)I

    move-result v0

    .line 1065
    iget-object v1, p0, Lase;->a:[I

    iget v2, p0, Lase;->g:I

    aput v2, v1, v0

    .line 1066
    iget-object v1, p0, Lase;->b:[I

    iget v2, p0, Lase;->h:I

    aput v2, v1, v0

    .line 1067
    invoke-static {v3}, Lcom/sohu/inputmethod/engine/IMEInterface;->getIMEIndexByType(I)I

    move-result v0

    .line 1068
    iget-object v1, p0, Lase;->a:[I

    iget v2, p0, Lase;->i:I

    aput v2, v1, v0

    .line 1069
    iget-object v1, p0, Lase;->b:[I

    iget v2, p0, Lase;->j:I

    aput v2, v1, v0

    .line 1070
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getIMEIndexByType(I)I

    move-result v0

    .line 1071
    iget-object v1, p0, Lase;->a:[I

    aput v3, v1, v0

    .line 1072
    iget-object v1, p0, Lase;->b:[I

    aput v4, v1, v0

    .line 1073
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getIMEIndexByType(I)I

    move-result v0

    .line 1074
    iget-object v1, p0, Lase;->a:[I

    aput v3, v1, v0

    .line 1075
    iget-object v1, p0, Lase;->b:[I

    aput v4, v1, v0

    .line 1076
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getIMEIndexByType(I)I

    move-result v0

    .line 1077
    iget-object v1, p0, Lase;->a:[I

    aput v3, v1, v0

    .line 1078
    iget-object v1, p0, Lase;->b:[I

    aput v4, v1, v0

    .line 1079
    return-void
.end method

.method private a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 999
    iget-object v0, p0, Lase;->a:Lasd;

    iget-object v0, v0, Lasd;->a:Lase;

    iget-boolean v0, v0, Lase;->b:Z

    if-ne v0, v2, :cond_3

    .line 1000
    invoke-static {v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->getIMEIndexByType(I)I

    move-result v0

    if-eq p2, v0, :cond_0

    invoke-static {v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->getIMEIndexByType(I)I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 1002
    :cond_0
    iget-object v0, p0, Lase;->a:Lasd;

    iget-object v0, v0, Lasd;->a:Lase;

    iget-object v0, v0, Lase;->b:[I

    invoke-static {v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->getIMEIndexByType(I)I

    move-result v1

    aput p1, v0, v1

    .line 1003
    iget-object v0, p0, Lase;->a:Lasd;

    iget-object v0, v0, Lasd;->a:Lase;

    iget-object v0, v0, Lase;->b:[I

    invoke-static {v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->getIMEIndexByType(I)I

    move-result v1

    aput p1, v0, v1

    .line 1005
    :goto_0
    iget-object v0, p0, Lase;->a:Lasd;

    iget-object v0, v0, Lasd;->a:Lase;

    iput p1, v0, Lase;->b:I

    .line 1006
    iget-object v0, p0, Lase;->a:Lasd;

    iput p1, v0, Lasd;->e:I

    .line 1017
    :goto_1
    iget-boolean v0, p0, Lase;->a:Z

    if-eqz v0, :cond_1

    .line 1018
    iget-object v0, p0, Lase;->a:Lasd;

    invoke-static {v0}, Lasd;->a(Lasd;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lase;->a:[I

    iget-object v2, p0, Lase;->b:[I

    invoke-virtual {v0, v1, v2}, Lafp;->b([I[I)V

    .line 1021
    :cond_1
    invoke-static {p2}, Lcom/sohu/inputmethod/engine/IMEInterface;->getIMETypeByIndex(I)I

    move-result v0

    .line 1024
    packed-switch v0, :pswitch_data_0

    .line 1043
    :goto_2
    iget-object v1, p0, Lase;->a:Lasd;

    invoke-static {v1}, Lasd;->a(Lasd;)Lafp;

    move-result-object v1

    iget-boolean v2, p0, Lase;->b:Z

    invoke-virtual {v1, v2, p1, v0}, Lafp;->a(ZII)V

    .line 1045
    return-void

    .line 1004
    :cond_2
    iget-object v0, p0, Lase;->a:Lasd;

    iget-object v0, v0, Lasd;->a:Lase;

    iget-object v0, v0, Lase;->b:[I

    aput p1, v0, p2

    goto :goto_0

    .line 1008
    :cond_3
    invoke-static {v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->getIMEIndexByType(I)I

    move-result v0

    if-eq p2, v0, :cond_4

    invoke-static {v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->getIMEIndexByType(I)I

    move-result v0

    if-ne p2, v0, :cond_5

    .line 1010
    :cond_4
    iget-object v0, p0, Lase;->a:Lasd;

    iget-object v0, v0, Lasd;->a:Lase;

    iget-object v0, v0, Lase;->a:[I

    invoke-static {v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->getIMEIndexByType(I)I

    move-result v1

    aput p1, v0, v1

    .line 1011
    iget-object v0, p0, Lase;->a:Lasd;

    iget-object v0, v0, Lasd;->a:Lase;

    iget-object v0, v0, Lase;->a:[I

    invoke-static {v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->getIMEIndexByType(I)I

    move-result v1

    aput p1, v0, v1

    .line 1013
    :goto_3
    iget-object v0, p0, Lase;->a:Lasd;

    iget-object v0, v0, Lasd;->a:Lase;

    iput p1, v0, Lase;->a:I

    .line 1014
    iget-object v0, p0, Lase;->a:Lasd;

    iput p1, v0, Lasd;->e:I

    goto :goto_1

    .line 1012
    :cond_5
    iget-object v0, p0, Lase;->a:Lasd;

    iget-object v0, v0, Lasd;->a:Lase;

    iget-object v0, v0, Lase;->a:[I

    aput p1, v0, p2

    goto :goto_3

    .line 1026
    :pswitch_0
    iget-boolean v1, p0, Lase;->b:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lase;->a:Lasd;

    iget-object v1, v1, Lasd;->a:Lase;

    iput p1, v1, Lase;->f:I

    goto :goto_2

    .line 1027
    :cond_6
    iget-object v1, p0, Lase;->a:Lasd;

    iget-object v1, v1, Lasd;->a:Lase;

    iput p1, v1, Lase;->e:I

    goto :goto_2

    .line 1031
    :pswitch_1
    iget-boolean v1, p0, Lase;->b:Z

    if-eqz v1, :cond_7

    .line 1032
    iget-object v1, p0, Lase;->a:Lasd;

    iget-object v1, v1, Lasd;->a:Lase;

    iput p1, v1, Lase;->h:I

    .line 1033
    iget-object v1, p0, Lase;->a:Lasd;

    iget-object v1, v1, Lasd;->a:Lase;

    iput p1, v1, Lase;->j:I

    goto :goto_2

    .line 1036
    :cond_7
    iget-object v1, p0, Lase;->a:Lasd;

    iget-object v1, v1, Lasd;->a:Lase;

    iput p1, v1, Lase;->g:I

    .line 1037
    iget-object v1, p0, Lase;->a:Lasd;

    iget-object v1, v1, Lasd;->a:Lase;

    iput p1, v1, Lase;->i:I

    goto :goto_2

    .line 1024
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lase;)V
    .locals 0
    .parameter

    .prologue
    .line 973
    invoke-direct {p0}, Lase;->a()V

    return-void
.end method

.method static synthetic a(Lase;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 973
    invoke-direct {p0, p1, p2}, Lase;->a(II)V

    return-void
.end method

.method static synthetic a(Lase;)[I
    .locals 1
    .parameter

    .prologue
    .line 973
    iget-object v0, p0, Lase;->a:[I

    return-object v0
.end method

.method static synthetic b(Lase;)I
    .locals 1
    .parameter

    .prologue
    .line 973
    iget v0, p0, Lase;->d:I

    return v0
.end method

.method static synthetic b(Lase;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 973
    iput p1, p0, Lase;->f:I

    return p1
.end method

.method static synthetic b(Lase;)[I
    .locals 1
    .parameter

    .prologue
    .line 973
    iget-object v0, p0, Lase;->b:[I

    return-object v0
.end method

.method static synthetic c(Lase;)I
    .locals 1
    .parameter

    .prologue
    .line 973
    iget v0, p0, Lase;->b:I

    return v0
.end method

.method static synthetic c(Lase;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 973
    iput p1, p0, Lase;->g:I

    return p1
.end method

.method static synthetic d(Lase;)I
    .locals 1
    .parameter

    .prologue
    .line 973
    iget v0, p0, Lase;->a:I

    return v0
.end method

.method static synthetic d(Lase;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 973
    iput p1, p0, Lase;->h:I

    return p1
.end method

.method static synthetic e(Lase;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 973
    iput p1, p0, Lase;->i:I

    return p1
.end method

.method static synthetic f(Lase;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 973
    iput p1, p0, Lase;->j:I

    return p1
.end method

.method static synthetic g(Lase;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 973
    iput p1, p0, Lase;->a:I

    return p1
.end method

.method static synthetic h(Lase;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 973
    iput p1, p0, Lase;->b:I

    return p1
.end method

.method static synthetic i(Lase;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 973
    invoke-direct {p0, p1}, Lase;->a(I)I

    move-result v0

    return v0
.end method
