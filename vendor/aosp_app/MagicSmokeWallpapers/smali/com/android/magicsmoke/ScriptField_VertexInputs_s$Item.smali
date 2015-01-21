.class public Lcom/android/magicsmoke/ScriptField_VertexInputs_s$Item;
.super Ljava/lang/Object;
.source "ScriptField_VertexInputs_s.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/magicsmoke/ScriptField_VertexInputs_s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field public static final sizeof:I = 0x20


# instance fields
.field position:Landroid/renderscript/Float4;

.field texture0:Landroid/renderscript/Float2;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/renderscript/Float4;

    invoke-direct {v0}, Landroid/renderscript/Float4;-><init>()V

    iput-object v0, p0, Lcom/android/magicsmoke/ScriptField_VertexInputs_s$Item;->position:Landroid/renderscript/Float4;

    .line 38
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    iput-object v0, p0, Lcom/android/magicsmoke/ScriptField_VertexInputs_s$Item;->texture0:Landroid/renderscript/Float2;

    .line 39
    return-void
.end method
