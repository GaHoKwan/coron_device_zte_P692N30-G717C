.class public Lcom/amoi/amoitools/install/AppSnippet;
.super Ljava/lang/Object;
.source "AppSnippet.java"


# instance fields
.field appName:Ljava/lang/String;

.field code:I

.field icon:Landroid/graphics/drawable/Drawable;

.field packageName:Ljava/lang/String;

.field verName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "appName"
    .parameter "icon"
    .parameter "packageName"
    .parameter "verName"
    .parameter "code"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/amoi/amoitools/install/AppSnippet;->code:I

    .line 14
    iput-object p1, p0, Lcom/amoi/amoitools/install/AppSnippet;->appName:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/amoi/amoitools/install/AppSnippet;->icon:Landroid/graphics/drawable/Drawable;

    .line 16
    iput-object p3, p0, Lcom/amoi/amoitools/install/AppSnippet;->packageName:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/amoi/amoitools/install/AppSnippet;->verName:Ljava/lang/String;

    .line 18
    iput p5, p0, Lcom/amoi/amoitools/install/AppSnippet;->code:I

    .line 19
    return-void
.end method
