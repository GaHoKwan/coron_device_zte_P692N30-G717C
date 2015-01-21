.class Lcom/android/emailcommon/utility/HtmlConverter$HtmlToTextTagHandler;
.super Ljava/lang/Object;
.source "HtmlConverter.java"

# interfaces
.implements Landroid/text/Html$TagHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/HtmlConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HtmlToTextTagHandler"
.end annotation


# static fields
.field private static final IGNORED_ANNOTATION_KEY:Ljava/lang/String; = "K9_ANNOTATION"

.field private static final IGNORED_ANNOTATION_VALUE:Ljava/lang/String; = "hiddenSpan"

.field private static final TAGS_WITH_IGNORED_CONTENT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/android/emailcommon/utility/HtmlConverter$HtmlToTextTagHandler$1;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/HtmlConverter$HtmlToTextTagHandler$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/HtmlConverter$HtmlToTextTagHandler;->TAGS_WITH_IGNORED_CONTENT:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/emailcommon/utility/HtmlConverter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/emailcommon/utility/HtmlConverter$HtmlToTextTagHandler;-><init>()V

    return-void
.end method

.method private getOpeningAnnotation(Landroid/text/Editable;)Ljava/lang/Object;
    .locals 6
    .parameter "output"

    .prologue
    .line 190
    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    const-class v5, Landroid/text/Annotation;

    invoke-interface {p1, v3, v4, v5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 191
    .local v1, objs:[Ljava/lang/Object;
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 192
    aget-object v2, v1, v0

    check-cast v2, Landroid/text/Annotation;

    .line 193
    .local v2, span:Landroid/text/Annotation;
    aget-object v3, v1, v0

    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    const/16 v4, 0x11

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "K9_ANNOTATION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "hiddenSpan"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    aget-object v3, v1, v0

    .line 199
    .end local v2           #span:Landroid/text/Annotation;
    :goto_1
    return-object v3

    .line 191
    .restart local v2       #span:Landroid/text/Annotation;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 199
    .end local v2           #span:Landroid/text/Annotation;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private handleIgnoredTag(ZLandroid/text/Editable;)V
    .locals 6
    .parameter "opening"
    .parameter "output"

    .prologue
    .line 167
    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v0

    .line 168
    .local v0, len:I
    if-eqz p1, :cond_1

    .line 169
    new-instance v3, Landroid/text/Annotation;

    const-string v4, "K9_ANNOTATION"

    const-string v5, "hiddenSpan"

    invoke-direct {v3, v4, v5}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x11

    invoke-interface {p2, v3, v0, v0, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/emailcommon/utility/HtmlConverter$HtmlToTextTagHandler;->getOpeningAnnotation(Landroid/text/Editable;)Ljava/lang/Object;

    move-result-object v1

    .line 173
    .local v1, start:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 174
    invoke-interface {p2, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 176
    .local v2, where:I
    invoke-interface {p2, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 179
    invoke-interface {p2, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method


# virtual methods
.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .locals 1
    .parameter "opening"
    .parameter "tag"
    .parameter "output"
    .parameter "xmlReader"

    .prologue
    .line 145
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 146
    const-string v0, "hr"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    sget-object v0, Lcom/android/emailcommon/utility/HtmlConverter$HtmlToTextTagHandler;->TAGS_WITH_IGNORED_CONTENT:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0, p1, p3}, Lcom/android/emailcommon/utility/HtmlConverter$HtmlToTextTagHandler;->handleIgnoredTag(ZLandroid/text/Editable;)V

    goto :goto_0
.end method
