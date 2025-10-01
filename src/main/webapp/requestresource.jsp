<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Request New Resource</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background-color: #f8f9fa; }
        .container { max-width: 600px; margin-top: 50px; }
        .card { border-radius: 10px; box-shadow: 0 2px 8px rgba(0,0,0,0.1); }
        .card-header { background: #007bff; color: #fff; font-weight: 600; }
        .btn-submit { background: #28a745; color: #fff; font-weight: 500; }
        .btn-submit:hover { background: #218838; }
    </style>
</head>
<body>

<div class="container">
    <div class="card">
        <div class="card-header">Request New Resource</div>
        <div class="card-body">
            <form action="RequestResourceServlet" method="post">
                <!-- ID can be generated in DB, so we keep it hidden -->
                <input type="hidden" name="id" value="">

                <div class="mb-3">
                    <label for="title" class="form-label">Title</label>
                    <input type="text" name="title" id="title" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label for="author" class="form-label">Author</label>
                    <input type="text" name="author" id="author" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label for="type" class="form-label">Type</label>
                    <select name="type" id="type" class="form-select" required>
                        <option value="">-- Select Type --</option>
                        <option value="Book">Book</option>
                        <option value="Journal">Journal</option>
                        <option value="Thesis">Thesis</option>
                        <option value="Magazine">Magazine</option>
                        <option value="Other">Other</option>
                    </select>
                </div>

                <div class="mb-3">
                    <label for="justification" class="form-label">Justification</label>
                    <textarea name="justification" id="justification" class="form-control" rows="4" required></textarea>
                </div>

                <button type="submit" class="btn btn-submit w-100">Submit Request</button>
            </form>
        </div>
    </div>
</div>

</body>
</html>
