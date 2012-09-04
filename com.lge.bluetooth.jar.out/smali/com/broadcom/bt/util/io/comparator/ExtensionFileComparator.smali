.class public Lcom/broadcom/bt/util/io/comparator/ExtensionFileComparator;
.super Ljava/lang/Object;
.source "ExtensionFileComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field public static final EXTENSION_COMPARATOR:Ljava/util/Comparator;

.field public static final EXTENSION_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;

.field public static final EXTENSION_INSENSITIVE_REVERSE:Ljava/util/Comparator;

.field public static final EXTENSION_REVERSE:Ljava/util/Comparator;

.field public static final EXTENSION_SYSTEM_COMPARATOR:Ljava/util/Comparator;

.field public static final EXTENSION_SYSTEM_REVERSE:Ljava/util/Comparator;


# instance fields
.field private final caseSensitivity:Lcom/broadcom/bt/util/io/IOCase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/broadcom/bt/util/io/comparator/ExtensionFileComparator;

    invoke-direct {v0}, Lcom/broadcom/bt/util/io/comparator/ExtensionFileComparator;-><init>()V

    sput-object v0, Lcom/broadcom/bt/util/io/comparator/ExtensionFileComparator;->EXTENSION_COMPARATOR:Ljava/util/Comparator;

    .line 77
    new-instance v0, Lcom/broadcom/bt/util/io/comparator/ReverseComparator;

    sget-object v1, Lcom/broadcom/bt/util/io/comparator/ExtensionFileComparator;->EXTENSION_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/util/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/broadcom/bt/util/io/comparator/ExtensionFileComparator;->EXTENSION_REVERSE:Ljava/util/Comparator;

    .line 80
    new-instance v0, Lcom/broadcom/bt/util/io/comparator/ExtensionFileComparator;

    sget-object v1, Lcom/broadcom/bt/util/io/IOCase;->INSENSITIVE:Lcom/broadcom/bt/util/io/IOCase;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/util/io/comparator/ExtensionFileComparator;-><init>(Lcom/broadcom/bt/util/io/IOCase;)V

    sput-object v0, Lcom/broadcom/bt/util/io/comparator/ExtensionFileComparator;->EXTENSION_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;

    .line 83
    new-instance v0, Lcom/broadcom/bt/util/io/comparator/ReverseComparator;

    sget-object v1, Lcom/broadcom/bt/util/io/comparator/ExtensionFileComparator;->EXTENSION_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/util/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/broadcom/bt/util/io/comparator/ExtensionFileComparator;->EXTENSION_INSENSITIVE_REVERSE:Ljava/util/Comparator;

    .line 87
    new-instance v0, Lcom/broadcom/bt/util/io/comparator/ExtensionFileComparator;

    sget-object v1, Lcom/broadcom/bt/util/io/IOCase;->SYSTEM:Lcom/broadcom/bt/util/io/IOCase;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/util/io/comparator/ExtensionFileComparator;-><init>(Lcom/broadcom/bt/util/io/IOCase;)V

    sput-object v0, Lcom/broadcom/bt/util/io/comparator/ExtensionFileComparator;->EXTENSION_SYSTEM_COMPARATOR:Ljava/util/Comparator;

    .line 90
    new-instance v0, Lcom/broadcom/bt/util/io/comparator/ReverseComparator;

    sget-object v1, Lcom/broadcom/bt/util/io/comparator/ExtensionFileComparator;->EXTENSION_SYSTEM_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/util/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/broadcom/bt/util/io/comparator/ExtensionFileComparator;->EXTENSION_SYSTEM_REVERSE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    sget-object v0, Lcom/broadcom/bt/util/io/IOCase;->SENSITIVE:Lcom/broadcom/bt/util/io/IOCase;

    iput-object v0, p0, Lcom/broadcom/bt/util/io/comparator/ExtensionFileComparator;->caseSensitivity:Lcom/broadcom/bt/util/io/IOCase;

    .line 100
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/util/io/IOCase;)V
    .locals 0
    .parameter "caseSensitivity"

    .prologue
    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 108
    if-nez p1, :cond_0

    sget-object p1, Lcom/broadcom/bt/util/io/IOCase;->SENSITIVE:Lcom/broadcom/bt/util/io/IOCase;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/broadcom/bt/util/io/comparator/ExtensionFileComparator;->caseSensitivity:Lcom/broadcom/bt/util/io/IOCase;

    .line 109
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 123
    move-object v0, p1

    check-cast v0, Ljava/io/File;

    .local v0, file1:Ljava/io/File;
    move-object v1, p2

    .line 124
    check-cast v1, Ljava/io/File;

    .line 125
    .local v1, file2:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/broadcom/bt/util/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, suffix1:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/broadcom/bt/util/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, suffix2:Ljava/lang/String;
    iget-object v4, p0, Lcom/broadcom/bt/util/io/comparator/ExtensionFileComparator;->caseSensitivity:Lcom/broadcom/bt/util/io/IOCase;

    invoke-virtual {v4, v2, v3}, Lcom/broadcom/bt/util/io/IOCase;->checkCompareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    return v4
.end method
