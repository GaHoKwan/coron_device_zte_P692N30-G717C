.class public Ladz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/settings/GestureListActivity;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/GestureListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Ladz;->a:Lcom/sohu/inputmethod/settings/GestureListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Laec;Laec;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 68
    iget-object v0, p1, Laec;->a:Ljava/lang/String;

    iget-object v1, p2, Laec;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 66
    check-cast p1, Laec;

    check-cast p2, Laec;

    invoke-virtual {p0, p1, p2}, Ladz;->a(Laec;Laec;)I

    move-result v0

    return v0
.end method
