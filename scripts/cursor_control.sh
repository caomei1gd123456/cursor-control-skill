# Open recently modified files
open_recent_files() {
    check_cursor
    
    local count=${1:-5}
    echo "Opening $count most recently modified files in current directory..."
    
    find . -type f -name "*.js" -o -name "*.py" -o -name "*.md" -o -name "*.json" -o -name "*.ts" -o -name "*.jsx" -o -name "*.tsx" | \
    head -$count | \
    while read -r file; do
        if [ -f "$file" ]; then
            echo "Opening: $file"
            open -a "Cursor" "$file"
        fi
    done
}

# Show help
show_help() {
    echo "Cursor Control Script"
    echo ""
    echo "Usage: $0 [command] [arguments]"
    echo ""
    echo "Commands:"
    echo "  open <file1> [file2] ...  - Open file(s) or folder(s) in Cursor"
    echo "  current                   - Open current directory in Cursor"
    echo "  git                       - Open git repository root in Cursor"
    echo "  recent [count]            - Open recently modified files (default: 5)"
    echo "  help                      - Show this help message"
    echo ""
    echo "Examples:"
    echo "  $0 open index.js"
    echo "  $0 open src/ README.md"
    echo "  $0 current"
    echo "  $0 git"
    echo "  $0 recent 3"
}

# Main command dispatcher
case "${1:-help}" in
    "open")
        shift
        open_in_cursor "$@"
        ;;
    "current")
        open_current_dir
        ;;
    "git")
        open_git_repo
        ;;
    "recent")
        shift
        open_recent_files "$@"
        ;;
    "help"|"-h"|"--help")
        show_help
        ;;
    *)
        echo "Unknown command: $1"
        show_help
        exit 1
        ;;
esac
