.class public Lcom/android/magicsmoke/ScriptField_VertexShaderConstants_s$Item;
.super Ljava/lang/Object;
.source "ScriptField_VertexShaderConstants_s.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/magicsmoke/ScriptField_VertexShaderConstants_s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field public static final sizeof:I = 0x60


# instance fields
.field layer0:Landroid/renderscript/Float4;

.field layer1:Landroid/renderscript/Float4;

.field layer2:Landroid/renderscript/Float4;

.field layer3:Landroid/renderscript/Float4;

.field layer4:Landroid/renderscript/Float4;

.field panoffset:Landroid/renderscript/Float2;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iput-object v0, p0, Lcom/android/magicsmoke/ScriptField_VertexShaderConstants_s$Item;->layer0:Landroid/renderscript/Float4;

    .line 42
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iput-object v0, p0, Lcom/android/magicsmoke/ScriptField_VertexShaderConstants_s$Item;->layer1:Landroid/renderscript/Float4;

    .line 43
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iput-object v0, p0, Lcom/android/magicsmoke/ScriptField_VertexShaderConstants_s$Item;->layer2:Landroid/renderscript/Float4;

    .line 44
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iput-object v0, p0, Lcom/android/magicsmoke/ScriptField_VertexShaderConstants_s$Item;->layer3:Landroid/renderscript/Float4;

    .line 45
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iput-object v0, p0, Lcom/android/magicsmoke/ScriptField_VertexShaderConstants_s$Item;->layer4:Landroid/renderscript/Float4;

    .line 46
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    iput-object v0, p0, Lcom/android/magicsmoke/ScriptField_VertexShaderConstants_s$Item;->panoffset:Landroid/renderscript/Float2;

    .line 47
    return-void
.end method
