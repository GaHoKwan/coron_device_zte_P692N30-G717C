.class public Lcom/android/noisefield/ScriptField_VertexColor_s$Item;
.super Ljava/lang/Object;
.source "ScriptField_VertexColor_s.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/noisefield/ScriptField_VertexColor_s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field public static final sizeof:I = 0x30


# instance fields
.field color:Landroid/renderscript/Float4;

.field offsetX:F

.field position:Landroid/renderscript/Float3;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iput-object v0, p0, Lcom/android/noisefield/ScriptField_VertexColor_s$Item;->position:Landroid/renderscript/Float3;

    .line 39
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iput-object v0, p0, Lcom/android/noisefield/ScriptField_VertexColor_s$Item;->color:Landroid/renderscript/Float4;

    .line 40
    return-void
.end method
